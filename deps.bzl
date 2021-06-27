""" Transitive dependencies for Rust Embedded Tools """

load("@rust_embedded//crates:crates.bzl", "raze_fetch_remote_crates")
load("@rules_rust//rust:repositories.bzl", "rust_repositories")
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")

def rust_embedded_deps():
    """Runs dependency rules for third party dependencies"""

    bazel_skylib_workspace()
    rust_repositories()
    raze_fetch_remote_crates()
