""" Rules """

load("@bazel_skylib//rules:native_binary.bzl", "native_binary")

def cargo_flash(name, file, chip, bin = False):
    """Use cargo-flash to load an elf file onto a chip

        To find the supported chip targets use the following command
        bazel run @rust_embedded//:cargo-flash -- --list-chips

    Args:
        name: the target name as a string
        file: the label to the elf file
        chip: string, the target chip
        bin: set to True the file is a binary, False by default
    """

    file_type = "bin" if bin else "elf"
    tool = "@rust_embedded//:cargo-flash"
    cmd = """
        echo "$(execpath {}) --chip {} --{} $(execpath {})" > $@
    """.format(tool, chip, file_type, file)

    native.genrule(
        name = name,
        srcs = [file],
        outs = [name + ".sh"],
        executable = True,
        tools = [tool],
        cmd = cmd,
    )

def cargo_embed_config(
        name,
        protocol = "Swd",
        flash = "true",
        reset = "true",
        halt = "true",
        log_level = "ERROR",
        gdb_enabled = "false",
        gdb_connection_string = "0.0.0.0:3333"):
    """ generate a custom cargo-embed config

    Args:
        name: the config label
        protocol: [Swd|Jtag]
        flash: [true|false]
        reset: [true|false]
        halt: [true|false]
        log_level: [OFF|ERROR|WARN|DEBUG]
        gdb_enabled: [true|false]
        gdb_connection_string: the server address
    """
    config = """
        [default.probe]
        protocol = \\"{}\\"

        [default.flashing]
        enabled = {}

        [default.reset]
        enabled = {}
        halt_afterwards = {}

        [default.general]
        log_level = \\"{}\\"

        [default.gdb]
        enabled = {}
        gdb_connection_string = \\"{}\\"
    """.format(protocol, flash, reset, halt, log_level, gdb_enabled, gdb_connection_string)

    native.genrule(
        name = name,
        outs = [name + ".toml"],
        cmd = """echo "{}" > $@""".format(config),
    )

def cargo_embed(name, file, chip, custom_config = None):
    """Use cargo-embed with a custom config

        You can flash the probe, start a gdb server and
        more using the cargo-embed binary

    Args:
        name: the target name as a string
        file: the label to the elf file
        chip: string, the target chip
        custom_config: the label of a custom config file
    """
    srcs = [file]
    tool = "@rust_embedded//:cargo-embed"
    cmd = "$(execpath {}) --chip {} --artifact-path $(execpath {})".format(tool, chip, file)

    if custom_config:
        srcs.append(custom_config)
        cmd += " --custom-config $(execpath {})".format(custom_config)

    native.genrule(
        name = name,
        srcs = srcs,
        outs = [name + ".sh"],
        executable = True,
        tools = [tool],
        cmd = """echo "{}" > $@""".format(cmd),
    )

def gdb_server(name, file, chip, log_level = "ERROR", address = "0.0.0.0", port = "3333"):
    """ Launch a gdb server using cargo embed

    Args:
        name: the name of the console target
        file: binary to debug
        chip: chip setting of cargo embed
        log_level: log level of cargo embed
        address: IP address of the GDB server
        port: Port of the GDB serverV
    """
    config = name + "_config"

    cargo_embed_config(
        name = config,
        gdb_enabled = "true",
        gdb_connection_string = "{}:{}".format(address, port),
        log_level = log_level,
    )

    cargo_embed(
        name = name,
        file = file,
        chip = chip,
        custom_config = config,
    )

def gdb_console(name, file, chip, gdb, gdb_args = [], log_level = "ERROR", address = "0.0.0.0", port = "3333"):
    """ Launch a gdb console using a custom gdb executable

    Args:
        name: the name of the console target
        file: binary to debug
        chip: chip setting of cargo embed
        gdb: label to the gdb file binary
        gdb_args: list of arguments to gdb
        log_level: log level of cargo embed
        address: IP address of the GDB server
        port: Port of the GDB serverV
    """
    config = name + "_config"
    server_binary = name + "_gdb_server"
    gdb_binary = name + "_gdb_binary"

    gdb_default_args = [
        "-ex 'file $(execpath {})'".format(file),
        "-ex 'target extended-remote {}:{}'".format(address, port),
    ]

    for arg in gdb_default_args:
        if arg not in gdb_args:
            gdb_args.append(arg)

    escape = {"\'": "\\'"}
    for arg in gdb_args:
        for key in escape:
            arg.replace(key, escape.get(key))

    gdb_console_script = """
    #! /usr/bin/env bash
    set -euo pipefail
    trap 'killall cargo_bin_cargo_embed' EXIT SIGINT SIGTERM SIGHUP
    bash -c \\"$(execpath {})\\" 2> /dev/null &
    bash -c \\"$(execpath {}) {}\\"
    """.format(server_binary, gdb_binary, " ".join(gdb_args))

    gdb_server(
        name = server_binary,
        file = file,
        chip = chip,
        address = address,
        port = port,
        log_level = log_level,
    )

    native_binary(
        name = gdb_binary,
        src = gdb,
        out = name + "_gdb",
    )

    native.genrule(
        name = name,
        srcs = [server_binary, file],
        outs = [name + "_gdb_console.sh"],
        tools = [gdb_binary],
        cmd = """echo "{}" > $@""".format(gdb_console_script),
        executable = True,
    )
