""" Rules """


def cargo_flash(name, file, chip, bin=False):
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
        protocol="Swd",
        flash="true",
        reset="true",
        halt="true",
        log_level ="ERROR",
        gdb_enabled = "false",
        gdb_connection_string="0.0.0.0:3333",
    ):
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
        outs = ["custom.embed.toml"],
        cmd = """echo "{}" > $@""".format(config),
    )


def cargo_embed(name, file, chip, custom_config=None):
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