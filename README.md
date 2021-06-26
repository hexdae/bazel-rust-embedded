<p align="center">

<a href="https://github.com/d-asnaghi/bazel-rust-embedded/blob/master/LICENSE">
    <img alt="GitHub license" src="https://img.shields.io/github/license/d-asnaghi/bazel-rust-embedded?color=success">
</a>

<a href="https://github.com/d-asnaghi/bazel-rust-embedded/stargazers">
    <img alt="GitHub stars" src="https://img.shields.io/github/stars/d-asnaghi/bazel-rust-embedded?color=success">
</a>

<a href="https://github.com/d-asnaghi/bazel-rust-embedded/issues">
    <img alt="GitHub issues" src="https://img.shields.io/github/issues/d-asnaghi/bazel-rust-embedded">
</a>

<a href="https://github.com/d-asnaghi/bazel-rust-embedded/actions">
    <img alt="Linux" src="https://github.com/d-asnaghi/bazel-rust-embedded/workflows/Linux/badge.svg">
</a>

<a href="https://github.com/d-asnaghi/bazel-rust-embedded/actions">
    <img alt="macOS" src="https://github.com/d-asnaghi/bazel-rust-embedded/workflows/macOS/badge.svg">
</a>

<a href="https://github.com/d-asnaghi/bazel-rust-embedded/actions">
    <img alt="Widnows" src="https://github.com/d-asnaghi/bazel-rust-embedded/workflows/Windows/badge.svg">
</a>

</p>

# Rust Embedded Tools

This repository contains useful, cross-platform embedded tools that work out of the box in any Bazel project.

If this project was useful to you, give it a ⭐️ and I'll keep improving it!

## Install in your workspace

To import the `Bazel Rust Embedded` repo in your `WORKSPACE` make just add the following lines:

```python

http_archive(
    name = "rust_embedded",
    sha256 = "<sha256",
    strip_prefix = "bazel-rust-embedded-<version>",
    url = "https://github.com/d-asnaghi/bazel-rust-embedded/archive/refs/tags/<version>.tar.gz",
)

load("@rust_embedded//:repositories.bzl", "rust_embedded_repositories")

rust_embedded_repositories()

load("@rust_embedded//:deps.bzl", "rust_embedded_deps")

rust_embedded_deps()

```

Head to the [Releases](https://github.com/d-asnaghi/bazel-rust-embedded/releases) page for more specific `WORKSPACE` settings

## Dependencies

At the moment, this is still a pre-release project. The build is not completely hermetic (it will be in the future) and requires to install the following dependencies based on your operating system

### Linux

`sudo apt install -y pkg-config libusb-1.0-0-dev libftdi1-dev`
### Windows

`vcpkg install libftdi1:x64-windows-static-md libusb:x64-windows-static-md`

## Examples

Head to the [examples](examples) directory where you can see how to use the rules in this repo to flash and debug ARM firmware targets using a custom toolchain.

## [Cargo Flash](https://crates.io/crates/cargo-flash)

You can use cargo flash to load binaries or elf files to any target that uses a supported probe (JLink, STLink, Etc).

You can invoke the tool directly from the command line with `bazel run @rust_embedded//:cargo-flash -- --chip CHIP --elf ELF` or use the target in your bazel rules.

You can also use the built in rules, as the following example shows

```python
# package/BUILD

load("@rust_embedded//:rules.bzl", "cargo_flash")

cc_binary(
    name = "firmware_elf",
    ...
)

cc_binary(
    name = "firmware_bin",
    ...
)

cargo_flash(
    name = "flash_elf",
    file = ":firmware_elf",
    chip = "STM32F103C8",
)

cargo_flash(
    name = "flash_bin",
    file = ":firmware_bin",
    chip = "STM32F103C8",
    bin = True,
)
```

Then `bazel run //package:flash_elf` and `bazel run //package:flash_bin` will load the file to the target
## [Cargo Embed](https://crates.io/crates/cargo-embed)

Cargo embed is a more powerful version of cargo-flash. It can be used to start a gdb server after flashing the probe. You have an option to specify a custom config to feed into cargo flash for maximum configurability.

That config can also be an actual `.toml` file if you would rather have even more options.

```python
# package/BUILD

load("@rust_embedded//:rules.bzl", "cargo_embed_config", "cargo_embed")

cc_binary(
    name = "firmware_elf",
    ...
)

cargo_emebd_config(
    name = "config",
    flash = "true",
    halt = "true",
    gdb_enabled = "true",
)

cargo_embed(
    name = "flash_debug",
    file = ":firmware_elf",
    chip = "STM32F103C8",
    custom_config = ":config",
)
```

# GDB targets

Cargo embed exposes a GDB server, which can be connected to. For convenience, there are rules that specifically instantiate a GDB server and even launch the console for you.

```python
# package/BUILD

load("@rust_embedded//:rules.bzl", "gdb_server", "gdb_console")

cc_binary(
    name = "firmware_elf",
    ...
)

gdb_server(
    name = "gdb-server",
    file = ":firmware",
    chip = "STM32F103C8",
)

gdb_console(
    name = "gdb-console",
    file = ":firmware_elf",
    chip = "STM32F103C8",
    gdb = "<label to gdb binary>",
    gdb_commands = [
        "b main",
    ]
)
```