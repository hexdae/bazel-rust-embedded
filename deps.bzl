''' Transitive dependencies for Rust Embedded Tools '''

load("@rust_embedded_tools//crates:crates.bzl", "raze_fetch_remote_crates")
load("@rules_rust//rust:repositories.bzl", "rust_repositories")

def rust_embedded_tools_deps():
    """Runs dependency rules for third party dependencies"""

    rust_repositories()
    raze_fetch_remote_crates()