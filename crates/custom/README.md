# Custom crates override

This folder contains overrides to the custom crates downloaded by `cargo-raze`

Each override is defined in the form of a `.patch` file, which can be applied
to the `http_archive`

## `probe-rs.patch`
At the moment, `probe-rs` has some filename issues that have been fixed in
[PR #694](https://github.com/probe-rs/probe-rs/pull/694).

As soon as these fixes make their way into the version of the crate used by
`cargo-flash` we should be able to completely remove the source.