''' Repositories for Rust Embedded Tools '''

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@rust_embedded//crates:crates.bzl", "raze_fetch_remote_crates")

def rust_embedded_repositories():
    """Creates repository definitions for third party dependencies"""

    maybe(
        http_archive,
        name = "bazel_skylib",
        urls = [
            "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
            "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.3/bazel-skylib-1.0.3.tar.gz",
        ],
        sha256 = "1c531376ac7e5a180e0237938a2536de0c54d93f5c278634818e0efc952dd56c",
    )

    maybe(
        http_archive,
        name = "rules_rust",
        sha256 = "18c0a02a007cd26c3f5b4d21dc26a80af776ef755460028a796bc61c649fdf3f",
        strip_prefix = "rules_rust-467a301fd665db344803c1d8a2401ec2bf8c74ce",
        urls = [
            # Master branch as of 2021-04-23
            "https://github.com/bazelbuild/rules_rust/archive/467a301fd665db344803c1d8a2401ec2bf8c74ce.tar.gz",
        ],
    )

    raze_fetch_remote_crates()