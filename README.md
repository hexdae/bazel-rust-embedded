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

# Bazel Rust Embedded Tools

This repository contains useful, cross-platform embedded tools that work out of the box in any Bazel project.

If this project was useful to you, give it a ⭐️ and I'll keep improving it!

## Install in your workspace

To import the `Bazel Rust Embedded` repo in your `WORKSPACE` make just add the following lines:

```python

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rust_embedded",
    sha256 = "<sha>",
    strip_prefix = "rust_embedded-<commit>",
    urls = [
        # Master branch as of 2021-04-23
        "https://github.com/d-asnaghi/rust_embedded/archive/<commit>.tar.gz",
    ],
)

load("@rust_embedded//:repositories.bzl", "rust_embedded_repositories")

rust_embedded_repositories()

load("@rust_embedded//:deps.bzl", "rust_embedded_deps)

rust_embedded_deps()

```

## [Cargo Flash](https://crates.io/crates/cargo-flash)

You can use cargo flash to load binaries or elf files to any target that uses a supported probe (JLink, STLink, Etc).

You can invoke the tool directly from the command line with `bazel run @rust_embedded//:cargo-flash -- --chip CHIP --elf ELF` or use the target in your bazel rules.

You can also use the built in rules, as the following example shows

'''python
# package/BUILD

load("@rust_embedded//:rules.bzl", "cargo_flash")

cargo_flash(
    name = "flash",
    file = "<your/bazel/elf>",
    chip = "STM32F103C8",
)

cargo_flash(
    name = "flash_bin",
    file = "<your/bazel/elf>",
    chip = "STM32F103C8",
    bin = True,
)

'''

Then `bazel run //package:flash` will load the file to the rarget


