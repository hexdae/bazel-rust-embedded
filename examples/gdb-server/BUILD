load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@rust_embedded//:rules.bzl", "gdb_server")

alias(
    name = "linker",
    actual = ":src/linker.ld",
)

cc_binary(
    name = "firmware",
    srcs = glob(["src/*.c"]),
    additional_linker_inputs = [":linker"],
    copts = [
        "-mcpu=cortex-m3",
        "-mthumb",
        "-std=gnu11",
        "-Wall",
        "-g",
        "-O0",
    ],
    linkopts = [
        "-nostdlib",
        "-T $(execpath :linker)",
    ],
)

gdb_server(
    name = "gdb-server",
    chip = "STM32F103C8",
    file = ":firmware",
)
