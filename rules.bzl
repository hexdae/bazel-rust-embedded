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
        echo "$(locations {}) --chip {} --{} $(location {})" > $@
    """.format(tool, chip, file_type, file)

    native.genrule(
        name = name,
        srcs = [file],
        outs = [name + ".sh"],
        executable = True,
        tools = [tool],
        cmd = cmd,
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
    cmd = "$(locations {}) --chip {} --artifact-path $(locations {})".format(tool, chip, file)

    if custom_config:
        srcs.append(custom_config)
        cmd += " --custom-config $(locations {})".format(custom_config)

    native.genrule(
        name = name,
        srcs = srcs,
        outs = [name + ".sh"],
        executable = True,
        tools = [tool],
        cmd = """echo "{}" > $@""".format(cmd),
    )