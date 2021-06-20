workspace(name = "rust_embedded_tools")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_rust",
    sha256 = "18c0a02a007cd26c3f5b4d21dc26a80af776ef755460028a796bc61c649fdf3f",
    strip_prefix = "rules_rust-467a301fd665db344803c1d8a2401ec2bf8c74ce",
    urls = [
        # Master branch as of 2021-04-23
        "https://github.com/bazelbuild/rules_rust/archive/467a301fd665db344803c1d8a2401ec2bf8c74ce.tar.gz",
    ],
)

load("@rules_rust//rust:repositories.bzl", "rust_repositories")

rust_repositories()

load("@rust_embedded_tools//:repositories.bzl", "rust_embedded_tools_repositories")

rust_embedded_tools_repositories()

load("@rust_embedded_tools//:dependencies.bzl", "rust_embedded_tools_dependencies")

rust_embedded_tools_dependencies()