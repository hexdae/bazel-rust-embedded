load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@rust_embedded//:rules.bzl", "cargo_flash")

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
        "-T $(execpath :linker)"
    ],
)

cargo_flash(
    name = "flash",
    file = ":firmware",
    chip = "STM32F103C8",
)
