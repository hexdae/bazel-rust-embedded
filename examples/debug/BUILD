load("@rules_cc//cc:defs.bzl", "cc_binary")
load("@rust_embedded//:rules.bzl", "cargo_embed")

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

cargo_embed(
    name = "debug",
    file = ":firmware",
    chip = "STM32F103C8",
    custom_config = ".embed.toml"
)
