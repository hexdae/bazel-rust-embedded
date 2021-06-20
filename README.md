# Bazel Rust Embedded Tools

This repository contains useful, cross-platform embedded tools that work out of the box in any Bazel project.

## Install in your workspace

To import the `Bazel Rust Embedded Tools` repo in your `WORKSPACE` make just add the following lines:

```python

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rust_embedded_tools",
    sha256 = "<sha>",
    strip_prefix = "rust_embedded_tools-<commit>",
    urls = [
        # Master branch as of 2021-04-23
        "https://github.com/d-asnaghi/rust_embedded_tools/archive/<commit>.tar.gz",
    ],
)

load("@rust_embedded_tools//:repositories.bzl", "rust_embedded_tools_repositories")

rust_embedded_tools_repositories()

load("@rust_embedded_tools//:deps.bzl", "rust_embedded_tools_deps)

rust_embedded_tools_dependencies()

```


