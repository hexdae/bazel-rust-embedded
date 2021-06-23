"""
@generated
cargo-raze generated Bazel file.

DO NOT EDIT! Replaced on runs of cargo-raze
"""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")  # buildifier: disable=load
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")  # buildifier: disable=load

def raze_fetch_remote_crates():
    """This function defines a collection of repos and should be called in a WORKSPACE file"""
    maybe(
        http_archive,
        name = "raze__adler__1_0_2",
        url = "https://crates.io/api/v1/crates/adler/1.0.2/download",
        type = "tar.gz",
        sha256 = "f26201604c87b1e01bd3d98f8d5d9a8fcbb815e8cedb41ffccbeb4bf593a35fe",
        strip_prefix = "adler-1.0.2",
        build_file = Label("//crates/remote:BUILD.adler-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__adler32__1_2_0",
        url = "https://crates.io/api/v1/crates/adler32/1.2.0/download",
        type = "tar.gz",
        sha256 = "aae1277d39aeec15cb388266ecc24b11c80469deae6067e17a1a7aa9e5c1f234",
        strip_prefix = "adler32-1.2.0",
        build_file = Label("//crates/remote:BUILD.adler32-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__aho_corasick__0_7_18",
        url = "https://crates.io/api/v1/crates/aho-corasick/0.7.18/download",
        type = "tar.gz",
        sha256 = "1e37cfd5e7657ada45f742d6e99ca5788580b5c529dc78faf11ece6dc702656f",
        strip_prefix = "aho-corasick-0.7.18",
        build_file = Label("//crates/remote:BUILD.aho-corasick-0.7.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ansi_term__0_11_0",
        url = "https://crates.io/api/v1/crates/ansi_term/0.11.0/download",
        type = "tar.gz",
        sha256 = "ee49baf6cb617b853aa8d93bf420db2383fab46d314482ca2803b40d5fde979b",
        strip_prefix = "ansi_term-0.11.0",
        build_file = Label("//crates/remote:BUILD.ansi_term-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__anyhow__1_0_41",
        url = "https://crates.io/api/v1/crates/anyhow/1.0.41/download",
        type = "tar.gz",
        sha256 = "15af2628f6890fe2609a3b91bef4c83450512802e59489f9c1cb1fa5df064a61",
        strip_prefix = "anyhow-1.0.41",
        build_file = Label("//crates/remote:BUILD.anyhow-1.0.41.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__arrayvec__0_5_2",
        url = "https://crates.io/api/v1/crates/arrayvec/0.5.2/download",
        type = "tar.gz",
        sha256 = "23b62fc65de8e4e7f52534fb52b0f3ed04746ae267519eef2a83941e8085068b",
        strip_prefix = "arrayvec-0.5.2",
        build_file = Label("//crates/remote:BUILD.arrayvec-0.5.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_channel__1_6_1",
        url = "https://crates.io/api/v1/crates/async-channel/1.6.1/download",
        type = "tar.gz",
        sha256 = "2114d64672151c0c5eaa5e131ec84a74f06e1e559830dabba01ca30605d66319",
        strip_prefix = "async-channel-1.6.1",
        build_file = Label("//crates/remote:BUILD.async-channel-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_executor__1_4_1",
        url = "https://crates.io/api/v1/crates/async-executor/1.4.1/download",
        type = "tar.gz",
        sha256 = "871f9bb5e0a22eeb7e8cf16641feb87c9dc67032ccf8ff49e772eb9941d3a965",
        strip_prefix = "async-executor-1.4.1",
        build_file = Label("//crates/remote:BUILD.async-executor-1.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_global_executor__2_0_2",
        url = "https://crates.io/api/v1/crates/async-global-executor/2.0.2/download",
        type = "tar.gz",
        sha256 = "9586ec52317f36de58453159d48351bc244bc24ced3effc1fce22f3d48664af6",
        strip_prefix = "async-global-executor-2.0.2",
        build_file = Label("//crates/remote:BUILD.async-global-executor-2.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_io__1_4_1",
        url = "https://crates.io/api/v1/crates/async-io/1.4.1/download",
        type = "tar.gz",
        sha256 = "4bbfd5cf2794b1e908ea8457e6c45f8f8f1f6ec5f74617bf4662623f47503c3b",
        strip_prefix = "async-io-1.4.1",
        build_file = Label("//crates/remote:BUILD.async-io-1.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_lock__2_4_0",
        url = "https://crates.io/api/v1/crates/async-lock/2.4.0/download",
        type = "tar.gz",
        sha256 = "e6a8ea61bf9947a1007c5cada31e647dbc77b103c679858150003ba697ea798b",
        strip_prefix = "async-lock-2.4.0",
        build_file = Label("//crates/remote:BUILD.async-lock-2.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_mutex__1_4_0",
        url = "https://crates.io/api/v1/crates/async-mutex/1.4.0/download",
        type = "tar.gz",
        sha256 = "479db852db25d9dbf6204e6cb6253698f175c15726470f78af0d918e99d6156e",
        strip_prefix = "async-mutex-1.4.0",
        build_file = Label("//crates/remote:BUILD.async-mutex-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_std__1_9_0",
        url = "https://crates.io/api/v1/crates/async-std/1.9.0/download",
        type = "tar.gz",
        sha256 = "d9f06685bad74e0570f5213741bea82158279a4103d988e57bfada11ad230341",
        strip_prefix = "async-std-1.9.0",
        build_file = Label("//crates/remote:BUILD.async-std-1.9.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__async_task__4_0_3",
        url = "https://crates.io/api/v1/crates/async-task/4.0.3/download",
        type = "tar.gz",
        sha256 = "e91831deabf0d6d7ec49552e489aed63b7456a7a3c46cff62adad428110b0af0",
        strip_prefix = "async-task-4.0.3",
        build_file = Label("//crates/remote:BUILD.async-task-4.0.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atomic_waker__1_0_0",
        url = "https://crates.io/api/v1/crates/atomic-waker/1.0.0/download",
        type = "tar.gz",
        sha256 = "065374052e7df7ee4047b1160cca5e1467a12351a40b3da123c870ba0b8eda2a",
        strip_prefix = "atomic-waker-1.0.0",
        build_file = Label("//crates/remote:BUILD.atomic-waker-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__atty__0_2_14",
        url = "https://crates.io/api/v1/crates/atty/0.2.14/download",
        type = "tar.gz",
        sha256 = "d9b39be18770d11421cdb1b9947a45dd3f37e93092cbf377614828a319d5fee8",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//crates/remote:BUILD.atty-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__autocfg__1_0_1",
        url = "https://crates.io/api/v1/crates/autocfg/1.0.1/download",
        type = "tar.gz",
        sha256 = "cdb031dd78e28731d87d56cc8ffef4a8f36ca26c38fe2de700543e627f8a464a",
        strip_prefix = "autocfg-1.0.1",
        build_file = Label("//crates/remote:BUILD.autocfg-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__base64__0_13_0",
        url = "https://crates.io/api/v1/crates/base64/0.13.0/download",
        type = "tar.gz",
        sha256 = "904dfeac50f3cdaba28fc6f57fdcddb75f49ed61346676a78c4ffe55877802fd",
        strip_prefix = "base64-0.13.0",
        build_file = Label("//crates/remote:BUILD.base64-0.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitfield__0_13_2",
        url = "https://crates.io/api/v1/crates/bitfield/0.13.2/download",
        type = "tar.gz",
        sha256 = "46afbd2983a5d5a7bd740ccb198caf5b82f45c40c09c0eed36052d91cb92e719",
        strip_prefix = "bitfield-0.13.2",
        build_file = Label("//crates/remote:BUILD.bitfield-0.13.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitflags__1_2_1",
        url = "https://crates.io/api/v1/crates/bitflags/1.2.1/download",
        type = "tar.gz",
        sha256 = "cf1de2fe8c75bc145a2f577add951f8134889b4795d47466a54a5c846d691693",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//crates/remote:BUILD.bitflags-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bitvec__0_19_5",
        url = "https://crates.io/api/v1/crates/bitvec/0.19.5/download",
        type = "tar.gz",
        sha256 = "8942c8d352ae1838c9dda0b0ca2ab657696ef2232a20147cf1b30ae1a9cb4321",
        strip_prefix = "bitvec-0.19.5",
        build_file = Label("//crates/remote:BUILD.bitvec-0.19.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__blocking__1_0_2",
        url = "https://crates.io/api/v1/crates/blocking/1.0.2/download",
        type = "tar.gz",
        sha256 = "c5e170dbede1f740736619b776d7251cb1b9095c435c34d8ca9f57fcd2f335e9",
        strip_prefix = "blocking-1.0.2",
        build_file = Label("//crates/remote:BUILD.blocking-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__bumpalo__3_7_0",
        url = "https://crates.io/api/v1/crates/bumpalo/3.7.0/download",
        type = "tar.gz",
        sha256 = "9c59e7af012c713f529e7a3ee57ce9b31ddd858d4b512923602f74608b009631",
        strip_prefix = "bumpalo-3.7.0",
        build_file = Label("//crates/remote:BUILD.bumpalo-3.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__byteorder__1_4_3",
        url = "https://crates.io/api/v1/crates/byteorder/1.4.3/download",
        type = "tar.gz",
        sha256 = "14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610",
        strip_prefix = "byteorder-1.4.3",
        build_file = Label("//crates/remote:BUILD.byteorder-1.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cache_padded__1_1_1",
        url = "https://crates.io/api/v1/crates/cache-padded/1.1.1/download",
        type = "tar.gz",
        sha256 = "631ae5198c9be5e753e5cc215e1bd73c2b466a3565173db433f52bb9d3e66dba",
        strip_prefix = "cache-padded-1.1.1",
        build_file = Label("//crates/remote:BUILD.cache-padded-1.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cargo_embed__0_10_1",
        url = "https://crates.io/api/v1/crates/cargo-embed/0.10.1/download",
        type = "tar.gz",
        sha256 = "5f51a03b2a8636d96ffd40620b3f07a9693321f9191a67977602aa40a70c8011",
        strip_prefix = "cargo-embed-0.10.1",
        patches = [
            "@rust_embedded//crates/custom:cargo-embed.patch",
        ],
        patch_args = [
            "apply",
        ],
        patch_tool = "git",
        build_file = Label("//crates/remote:BUILD.cargo-embed-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cargo_flash__0_10_2",
        url = "https://crates.io/api/v1/crates/cargo-flash/0.10.2/download",
        type = "tar.gz",
        sha256 = "0876813f7e3492114a51e86f48678478ddebd2311c5cbee84e4f513f135a8529",
        strip_prefix = "cargo-flash-0.10.2",
        build_file = Label("//crates/remote:BUILD.cargo-flash-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cargo_platform__0_1_1",
        url = "https://crates.io/api/v1/crates/cargo-platform/0.1.1/download",
        type = "tar.gz",
        sha256 = "0226944a63d1bf35a3b5f948dd7c59e263db83695c9e8bffc4037de02e30f1d7",
        strip_prefix = "cargo-platform-0.1.1",
        build_file = Label("//crates/remote:BUILD.cargo-platform-0.1.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cargo_metadata__0_12_3",
        url = "https://crates.io/api/v1/crates/cargo_metadata/0.12.3/download",
        type = "tar.gz",
        sha256 = "7714a157da7991e23d90686b9524b9e12e0407a108647f52e9328f4b3d51ac7f",
        strip_prefix = "cargo_metadata-0.12.3",
        build_file = Label("//crates/remote:BUILD.cargo_metadata-0.12.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cargo_toml__0_8_1",
        url = "https://crates.io/api/v1/crates/cargo_toml/0.8.1/download",
        type = "tar.gz",
        sha256 = "513d17226888c7b8283ac02a1c1b0d8a9d4cbf6db65dfadb79f598f5d7966fe9",
        strip_prefix = "cargo_toml-0.8.1",
        build_file = Label("//crates/remote:BUILD.cargo_toml-0.8.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cassowary__0_3_0",
        url = "https://crates.io/api/v1/crates/cassowary/0.3.0/download",
        type = "tar.gz",
        sha256 = "df8670b8c7b9dae1793364eafadf7239c40d669904660c5960d74cfd80b46a53",
        strip_prefix = "cassowary-0.3.0",
        build_file = Label("//crates/remote:BUILD.cassowary-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cc__1_0_68",
        url = "https://crates.io/api/v1/crates/cc/1.0.68/download",
        type = "tar.gz",
        sha256 = "4a72c244c1ff497a746a7e1fb3d14bd08420ecda70c8f25c7112f2781652d787",
        strip_prefix = "cc-1.0.68",
        build_file = Label("//crates/remote:BUILD.cc-1.0.68.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__0_1_10",
        url = "https://crates.io/api/v1/crates/cfg-if/0.1.10/download",
        type = "tar.gz",
        sha256 = "4785bdd1c96b2a846b2bd7cc02e86b6b3dbf14e7e53446c4f54c92a361040822",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//crates/remote:BUILD.cfg-if-0.1.10.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cfg_if__1_0_0",
        url = "https://crates.io/api/v1/crates/cfg-if/1.0.0/download",
        type = "tar.gz",
        sha256 = "baf1de4339761588bc0619e3cbc0120ee582ebb74b53b4efbf79117bd2da40fd",
        strip_prefix = "cfg-if-1.0.0",
        build_file = Label("//crates/remote:BUILD.cfg-if-1.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__chrono__0_4_19",
        url = "https://crates.io/api/v1/crates/chrono/0.4.19/download",
        type = "tar.gz",
        sha256 = "670ad68c9088c2a963aaa298cb369688cf3f9465ce5e2d4ca10e6e0098a1ce73",
        strip_prefix = "chrono-0.4.19",
        build_file = Label("//crates/remote:BUILD.chrono-0.4.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__clap__2_33_3",
        url = "https://crates.io/api/v1/crates/clap/2.33.3/download",
        type = "tar.gz",
        sha256 = "37e58ac78573c40708d45522f0d80fa2f01cc4f9b4e2bf749807255454312002",
        strip_prefix = "clap-2.33.3",
        build_file = Label("//crates/remote:BUILD.clap-2.33.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__cloudabi__0_0_3",
        url = "https://crates.io/api/v1/crates/cloudabi/0.0.3/download",
        type = "tar.gz",
        sha256 = "ddfc5b9aa5d4507acaf872de71051dfd0e309860e88966e1051e462a077aac4f",
        strip_prefix = "cloudabi-0.0.3",
        build_file = Label("//crates/remote:BUILD.cloudabi-0.0.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__colored__2_0_0",
        url = "https://crates.io/api/v1/crates/colored/2.0.0/download",
        type = "tar.gz",
        sha256 = "b3616f750b84d8f0de8a58bda93e08e2a81ad3f523089b05f1dffecab48c6cbd",
        strip_prefix = "colored-2.0.0",
        build_file = Label("//crates/remote:BUILD.colored-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__concurrent_queue__1_2_2",
        url = "https://crates.io/api/v1/crates/concurrent-queue/1.2.2/download",
        type = "tar.gz",
        sha256 = "30ed07550be01594c6026cff2a1d7fe9c8f683caa798e12b68694ac9e88286a3",
        strip_prefix = "concurrent-queue-1.2.2",
        build_file = Label("//crates/remote:BUILD.concurrent-queue-1.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__config__0_10_1",
        url = "https://crates.io/api/v1/crates/config/0.10.1/download",
        type = "tar.gz",
        sha256 = "19b076e143e1d9538dde65da30f8481c2a6c44040edb8e02b9bf1351edb92ce3",
        strip_prefix = "config-0.10.1",
        build_file = Label("//crates/remote:BUILD.config-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__console__0_14_1",
        url = "https://crates.io/api/v1/crates/console/0.14.1/download",
        type = "tar.gz",
        sha256 = "3993e6445baa160675931ec041a5e03ca84b9c6e32a056150d3aa2bdda0a1f45",
        strip_prefix = "console-0.14.1",
        build_file = Label("//crates/remote:BUILD.console-0.14.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crc32fast__1_2_1",
        url = "https://crates.io/api/v1/crates/crc32fast/1.2.1/download",
        type = "tar.gz",
        sha256 = "81156fece84ab6a9f2afdb109ce3ae577e42b1228441eded99bd77f627953b1a",
        strip_prefix = "crc32fast-1.2.1",
        build_file = Label("//crates/remote:BUILD.crc32fast-1.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossbeam_utils__0_8_5",
        url = "https://crates.io/api/v1/crates/crossbeam-utils/0.8.5/download",
        type = "tar.gz",
        sha256 = "d82cfc11ce7f2c3faef78d8a684447b40d503d9681acebed6cb728d45940c4db",
        strip_prefix = "crossbeam-utils-0.8.5",
        build_file = Label("//crates/remote:BUILD.crossbeam-utils-0.8.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossterm__0_17_7",
        url = "https://crates.io/api/v1/crates/crossterm/0.17.7/download",
        type = "tar.gz",
        sha256 = "6f4919d60f26ae233e14233cc39746c8c8bb8cd7b05840ace83604917b51b6c7",
        strip_prefix = "crossterm-0.17.7",
        build_file = Label("//crates/remote:BUILD.crossterm-0.17.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__crossterm_winapi__0_6_2",
        url = "https://crates.io/api/v1/crates/crossterm_winapi/0.6.2/download",
        type = "tar.gz",
        sha256 = "c2265c3f8e080075d9b6417aa72293fc71662f34b4af2612d8d1b074d29510db",
        strip_prefix = "crossterm_winapi-0.6.2",
        build_file = Label("//crates/remote:BUILD.crossterm_winapi-0.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ctor__0_1_20",
        url = "https://crates.io/api/v1/crates/ctor/0.1.20/download",
        type = "tar.gz",
        sha256 = "5e98e2ad1a782e33928b96fc3948e7c355e5af34ba4de7670fe8bac2a3b2006d",
        strip_prefix = "ctor-0.1.20",
        build_file = Label("//crates/remote:BUILD.ctor-0.1.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dtoa__0_4_8",
        url = "https://crates.io/api/v1/crates/dtoa/0.4.8/download",
        type = "tar.gz",
        sha256 = "56899898ce76aaf4a0f24d914c97ea6ed976d42fec6ad33fcbb0a1103e07b2b0",
        strip_prefix = "dtoa-0.4.8",
        build_file = Label("//crates/remote:BUILD.dtoa-0.4.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__dunce__1_0_2",
        url = "https://crates.io/api/v1/crates/dunce/1.0.2/download",
        type = "tar.gz",
        sha256 = "453440c271cf5577fd2a40e4942540cb7d0d2f85e27c8d07dd0023c925a67541",
        strip_prefix = "dunce-1.0.2",
        build_file = Label("//crates/remote:BUILD.dunce-1.0.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__encode_unicode__0_3_6",
        url = "https://crates.io/api/v1/crates/encode_unicode/0.3.6/download",
        type = "tar.gz",
        sha256 = "a357d28ed41a50f9c765dbfe56cbc04a64e53e5fc58ba79fbc34c10ef3df831f",
        strip_prefix = "encode_unicode-0.3.6",
        build_file = Label("//crates/remote:BUILD.encode_unicode-0.3.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__enum_primitive_derive__0_2_1",
        url = "https://crates.io/api/v1/crates/enum-primitive-derive/0.2.1/download",
        type = "tar.gz",
        sha256 = "5f52288f9a7ebb08959188872b58e7eaa12af9cb47da8e94158e16da7e143340",
        strip_prefix = "enum-primitive-derive-0.2.1",
        build_file = Label("//crates/remote:BUILD.enum-primitive-derive-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_7_1",
        url = "https://crates.io/api/v1/crates/env_logger/0.7.1/download",
        type = "tar.gz",
        sha256 = "44533bbbb3bb3c1fa17d9f2e4e38bbbaf8396ba82193c4cb1b6445d711445d36",
        strip_prefix = "env_logger-0.7.1",
        build_file = Label("//crates/remote:BUILD.env_logger-0.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__env_logger__0_8_4",
        url = "https://crates.io/api/v1/crates/env_logger/0.8.4/download",
        type = "tar.gz",
        sha256 = "a19187fea3ac7e84da7dacf48de0c45d63c6a76f9490dae389aead16c243fce3",
        strip_prefix = "env_logger-0.8.4",
        build_file = Label("//crates/remote:BUILD.env_logger-0.8.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__event_listener__2_5_1",
        url = "https://crates.io/api/v1/crates/event-listener/2.5.1/download",
        type = "tar.gz",
        sha256 = "f7531096570974c3a9dcf9e4b8e1cede1ec26cf5046219fb3b9d897503b9be59",
        strip_prefix = "event-listener-2.5.1",
        build_file = Label("//crates/remote:BUILD.event-listener-2.5.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fallible_iterator__0_2_0",
        url = "https://crates.io/api/v1/crates/fallible-iterator/0.2.0/download",
        type = "tar.gz",
        sha256 = "4443176a9f2c162692bd3d352d745ef9413eec5782a80d8fd6f8a1ac692a07f7",
        strip_prefix = "fallible-iterator-0.2.0",
        build_file = Label("//crates/remote:BUILD.fallible-iterator-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__fastrand__1_4_1",
        url = "https://crates.io/api/v1/crates/fastrand/1.4.1/download",
        type = "tar.gz",
        sha256 = "77b705829d1e87f762c2df6da140b26af5839e1033aa84aa5f56bb688e4e1bdb",
        strip_prefix = "fastrand-1.4.1",
        build_file = Label("//crates/remote:BUILD.fastrand-1.4.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__filetime__0_2_14",
        url = "https://crates.io/api/v1/crates/filetime/0.2.14/download",
        type = "tar.gz",
        sha256 = "1d34cfa13a63ae058bfa601fe9e313bbdb3746427c1459185464ce0fcf62e1e8",
        strip_prefix = "filetime-0.2.14",
        build_file = Label("//crates/remote:BUILD.filetime-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__flate2__1_0_20",
        url = "https://crates.io/api/v1/crates/flate2/1.0.20/download",
        type = "tar.gz",
        sha256 = "cd3aec53de10fe96d7d8c565eb17f2c687bb5518a2ec453b5b1252964526abe0",
        strip_prefix = "flate2-1.0.20",
        build_file = Label("//crates/remote:BUILD.flate2-1.0.20.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__funty__1_1_0",
        url = "https://crates.io/api/v1/crates/funty/1.1.0/download",
        type = "tar.gz",
        sha256 = "fed34cd105917e91daa4da6b3728c47b068749d6a62c59811f06ed2ac71d9da7",
        strip_prefix = "funty-1.1.0",
        build_file = Label("//crates/remote:BUILD.funty-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures__0_3_15",
        url = "https://crates.io/api/v1/crates/futures/0.3.15/download",
        type = "tar.gz",
        sha256 = "0e7e43a803dae2fa37c1f6a8fe121e1f7bf9548b4dfc0522a42f34145dadfc27",
        strip_prefix = "futures-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_channel__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-channel/0.3.15/download",
        type = "tar.gz",
        sha256 = "e682a68b29a882df0545c143dc3646daefe80ba479bcdede94d5a703de2871e2",
        strip_prefix = "futures-channel-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-channel-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_core__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-core/0.3.15/download",
        type = "tar.gz",
        sha256 = "0402f765d8a89a26043b889b26ce3c4679d268fa6bb22cd7c6aad98340e179d1",
        strip_prefix = "futures-core-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-core-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_executor__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-executor/0.3.15/download",
        type = "tar.gz",
        sha256 = "badaa6a909fac9e7236d0620a2f57f7664640c56575b71a7552fbd68deafab79",
        strip_prefix = "futures-executor-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-executor-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_io__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-io/0.3.15/download",
        type = "tar.gz",
        sha256 = "acc499defb3b348f8d8f3f66415835a9131856ff7714bf10dadfc4ec4bdb29a1",
        strip_prefix = "futures-io-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-io-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_lite__1_12_0",
        url = "https://crates.io/api/v1/crates/futures-lite/1.12.0/download",
        type = "tar.gz",
        sha256 = "7694489acd39452c77daa48516b894c153f192c3578d5a839b62c58099fcbf48",
        strip_prefix = "futures-lite-1.12.0",
        build_file = Label("//crates/remote:BUILD.futures-lite-1.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_macro__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-macro/0.3.15/download",
        type = "tar.gz",
        sha256 = "a4c40298486cdf52cc00cd6d6987892ba502c7656a16a4192a9992b1ccedd121",
        strip_prefix = "futures-macro-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-macro-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_sink__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-sink/0.3.15/download",
        type = "tar.gz",
        sha256 = "a57bead0ceff0d6dde8f465ecd96c9338121bb7717d3e7b108059531870c4282",
        strip_prefix = "futures-sink-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-sink-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_task__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-task/0.3.15/download",
        type = "tar.gz",
        sha256 = "8a16bef9fc1a4dddb5bee51c989e3fbba26569cbb0e31f5b303c184e3dd33dae",
        strip_prefix = "futures-task-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-task-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__futures_util__0_3_15",
        url = "https://crates.io/api/v1/crates/futures-util/0.3.15/download",
        type = "tar.gz",
        sha256 = "feb5c238d27e2bf94ffdfd27b2c29e3df4a68c4193bb6427384259e2bf191967",
        strip_prefix = "futures-util-0.3.15",
        build_file = Label("//crates/remote:BUILD.futures-util-0.3.15.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gdb_protocol__0_1_0",
        url = "https://crates.io/api/v1/crates/gdb-protocol/0.1.0/download",
        type = "tar.gz",
        sha256 = "5b8b88b222a91266bb192222d46d0da29addbc423d0a9910aec233dce875eb6e",
        strip_prefix = "gdb-protocol-0.1.0",
        build_file = Label("//crates/remote:BUILD.gdb-protocol-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gdb_server__0_10_0",
        url = "https://crates.io/api/v1/crates/gdb-server/0.10.0/download",
        type = "tar.gz",
        sha256 = "6df2a1d5907ed0b1b8ba44a674b102ed71869290363f6a3968d1462383bed284",
        strip_prefix = "gdb-server-0.10.0",
        build_file = Label("//crates/remote:BUILD.gdb-server-0.10.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gimli__0_23_0",
        url = "https://crates.io/api/v1/crates/gimli/0.23.0/download",
        type = "tar.gz",
        sha256 = "f6503fe142514ca4799d4c26297c4248239fe8838d827db6bd6065c6ed29a6ce",
        strip_prefix = "gimli-0.23.0",
        build_file = Label("//crates/remote:BUILD.gimli-0.23.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__git_version__0_3_4",
        url = "https://crates.io/api/v1/crates/git-version/0.3.4/download",
        type = "tar.gz",
        sha256 = "94918e83f1e01dedc2e361d00ce9487b14c58c7f40bab148026fa39d42cb41e2",
        strip_prefix = "git-version-0.3.4",
        build_file = Label("//crates/remote:BUILD.git-version-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__git_version_macro__0_3_4",
        url = "https://crates.io/api/v1/crates/git-version-macro/0.3.4/download",
        type = "tar.gz",
        sha256 = "34a97a52fdee1870a34fa6e4b77570cba531b27d1838874fef4429a791a3d657",
        strip_prefix = "git-version-macro-0.3.4",
        build_file = Label("//crates/remote:BUILD.git-version-macro-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__gloo_timers__0_2_1",
        url = "https://crates.io/api/v1/crates/gloo-timers/0.2.1/download",
        type = "tar.gz",
        sha256 = "47204a46aaff920a1ea58b11d03dec6f704287d27561724a4631e450654a891f",
        strip_prefix = "gloo-timers-0.2.1",
        build_file = Label("//crates/remote:BUILD.gloo-timers-0.2.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__goblin__0_2_3",
        url = "https://crates.io/api/v1/crates/goblin/0.2.3/download",
        type = "tar.gz",
        sha256 = "d20fd25aa456527ce4f544271ae4fea65d2eda4a6561ea56f39fb3ee4f7e3884",
        strip_prefix = "goblin-0.2.3",
        build_file = Label("//crates/remote:BUILD.goblin-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hashbrown__0_9_1",
        url = "https://crates.io/api/v1/crates/hashbrown/0.9.1/download",
        type = "tar.gz",
        sha256 = "d7afe4a420e3fe79967a00898cc1f4db7c8a49a9333a29f8a4bd76a253d5cd04",
        strip_prefix = "hashbrown-0.9.1",
        build_file = Label("//crates/remote:BUILD.hashbrown-0.9.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__heck__0_3_3",
        url = "https://crates.io/api/v1/crates/heck/0.3.3/download",
        type = "tar.gz",
        sha256 = "6d621efb26863f0e9924c6ac577e8275e5e6b77455db64ffa6c65c904e9e132c",
        strip_prefix = "heck-0.3.3",
        build_file = Label("//crates/remote:BUILD.heck-0.3.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hermit_abi__0_1_18",
        url = "https://crates.io/api/v1/crates/hermit-abi/0.1.18/download",
        type = "tar.gz",
        sha256 = "322f4de77956e22ed0e5032c359a0f1273f1f7f0d79bfa3b8ffbc730d7fbcc5c",
        strip_prefix = "hermit-abi-0.1.18",
        build_file = Label("//crates/remote:BUILD.hermit-abi-0.1.18.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hex__0_4_3",
        url = "https://crates.io/api/v1/crates/hex/0.4.3/download",
        type = "tar.gz",
        sha256 = "7f24254aa9a54b5c858eaee2f5bccdb46aaf0e486a595ed5fd8f86ba55232a70",
        strip_prefix = "hex-0.4.3",
        build_file = Label("//crates/remote:BUILD.hex-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__hidapi__1_2_6",
        url = "https://crates.io/api/v1/crates/hidapi/1.2.6/download",
        type = "tar.gz",
        sha256 = "81e07da7e8614133e88b3a93b7352eb3729e3ccd82d5ab661adf23bef1761bf8",
        strip_prefix = "hidapi-1.2.6",
        build_file = Label("//crates/remote:BUILD.hidapi-1.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__humantime__1_3_0",
        url = "https://crates.io/api/v1/crates/humantime/1.3.0/download",
        type = "tar.gz",
        sha256 = "df004cfca50ef23c36850aaaa59ad52cc70d0e90243c3c7737a4dd32dc7a3c4f",
        strip_prefix = "humantime-1.3.0",
        build_file = Label("//crates/remote:BUILD.humantime-1.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__humantime__2_1_0",
        url = "https://crates.io/api/v1/crates/humantime/2.1.0/download",
        type = "tar.gz",
        sha256 = "9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4",
        strip_prefix = "humantime-2.1.0",
        build_file = Label("//crates/remote:BUILD.humantime-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ihex__3_0_0",
        url = "https://crates.io/api/v1/crates/ihex/3.0.0/download",
        type = "tar.gz",
        sha256 = "365a784774bb381e8c19edb91190a90d7f2625e057b55de2bc0f6b57bc779ff2",
        strip_prefix = "ihex-3.0.0",
        build_file = Label("//crates/remote:BUILD.ihex-3.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__indexmap__1_6_2",
        url = "https://crates.io/api/v1/crates/indexmap/1.6.2/download",
        type = "tar.gz",
        sha256 = "824845a0bf897a9042383849b02c1bc219c2383772efcd5c6f9766fa4b81aef3",
        strip_prefix = "indexmap-1.6.2",
        build_file = Label("//crates/remote:BUILD.indexmap-1.6.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__indicatif__0_15_0",
        url = "https://crates.io/api/v1/crates/indicatif/0.15.0/download",
        type = "tar.gz",
        sha256 = "7baab56125e25686df467fe470785512329883aab42696d661247aca2a2896e4",
        strip_prefix = "indicatif-0.15.0",
        build_file = Label("//crates/remote:BUILD.indicatif-0.15.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__instant__0_1_9",
        url = "https://crates.io/api/v1/crates/instant/0.1.9/download",
        type = "tar.gz",
        sha256 = "61124eeebbd69b8190558df225adf7e4caafce0d743919e5d6b19652314ec5ec",
        strip_prefix = "instant-0.1.9",
        build_file = Label("//crates/remote:BUILD.instant-0.1.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__itoa__0_4_7",
        url = "https://crates.io/api/v1/crates/itoa/0.4.7/download",
        type = "tar.gz",
        sha256 = "dd25036021b0de88a0aff6b850051563c6516d0bf53f8638938edbb9de732736",
        strip_prefix = "itoa-0.4.7",
        build_file = Label("//crates/remote:BUILD.itoa-0.4.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__jaylink__0_1_5",
        url = "https://crates.io/api/v1/crates/jaylink/0.1.5/download",
        type = "tar.gz",
        sha256 = "e04098e968466cf76f8e5f34f890a3dfde1571aa9df80a3b229c3b002425c859",
        strip_prefix = "jaylink-0.1.5",
        build_file = Label("//crates/remote:BUILD.jaylink-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__jep106__0_2_5",
        url = "https://crates.io/api/v1/crates/jep106/0.2.5/download",
        type = "tar.gz",
        sha256 = "939876d20519325db0883757e29e9858ee02919d0f03e43c74f69296caa314f4",
        strip_prefix = "jep106-0.2.5",
        build_file = Label("//crates/remote:BUILD.jep106-0.2.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__js_sys__0_3_51",
        url = "https://crates.io/api/v1/crates/js-sys/0.3.51/download",
        type = "tar.gz",
        sha256 = "83bdfbace3a0e81a4253f73b49e960b053e396a11012cbd49b9b74d6a2b67062",
        strip_prefix = "js-sys-0.3.51",
        build_file = Label("//crates/remote:BUILD.js-sys-0.3.51.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__kv_log_macro__1_0_7",
        url = "https://crates.io/api/v1/crates/kv-log-macro/1.0.7/download",
        type = "tar.gz",
        sha256 = "0de8b303297635ad57c9f5059fd9cee7a47f8e8daa09df0fcd07dd39fb22977f",
        strip_prefix = "kv-log-macro-1.0.7",
        build_file = Label("//crates/remote:BUILD.kv-log-macro-1.0.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//crates/remote:BUILD.lazy_static-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lexical_core__0_7_6",
        url = "https://crates.io/api/v1/crates/lexical-core/0.7.6/download",
        type = "tar.gz",
        sha256 = "6607c62aa161d23d17a9072cc5da0be67cdfc89d3afb1e8d9c842bebc2525ffe",
        strip_prefix = "lexical-core-0.7.6",
        build_file = Label("//crates/remote:BUILD.lexical-core-0.7.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libc__0_2_97",
        url = "https://crates.io/api/v1/crates/libc/0.2.97/download",
        type = "tar.gz",
        sha256 = "12b8adadd720df158f4d70dfe7ccc6adb0472d7c55ca83445f6a5ab3e36f8fb6",
        strip_prefix = "libc-0.2.97",
        build_file = Label("//crates/remote:BUILD.libc-0.2.97.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libflate__1_1_0",
        url = "https://crates.io/api/v1/crates/libflate/1.1.0/download",
        type = "tar.gz",
        sha256 = "6d87eae36b3f680f7f01645121b782798b56ef33c53f83d1c66ba3a22b60bfe3",
        strip_prefix = "libflate-1.1.0",
        build_file = Label("//crates/remote:BUILD.libflate-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libflate_lz77__1_1_0",
        url = "https://crates.io/api/v1/crates/libflate_lz77/1.1.0/download",
        type = "tar.gz",
        sha256 = "39a734c0493409afcd49deee13c006a04e3586b9761a03543c6272c9c51f2f5a",
        strip_prefix = "libflate_lz77-1.1.0",
        build_file = Label("//crates/remote:BUILD.libflate_lz77-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__libusb1_sys__0_4_4",
        url = "https://crates.io/api/v1/crates/libusb1-sys/0.4.4/download",
        type = "tar.gz",
        sha256 = "be241693102a24766d0b8526c8988771edac2842630d7e730f8e9fbc014f3703",
        strip_prefix = "libusb1-sys-0.4.4",
        build_file = Label("//crates/remote:BUILD.libusb1-sys-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__linked_hash_map__0_5_4",
        url = "https://crates.io/api/v1/crates/linked-hash-map/0.5.4/download",
        type = "tar.gz",
        sha256 = "7fb9b38af92608140b86b693604b9ffcc5824240a484d1ecd4795bacb2fe88f3",
        strip_prefix = "linked-hash-map-0.5.4",
        build_file = Label("//crates/remote:BUILD.linked-hash-map-0.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__lock_api__0_3_4",
        url = "https://crates.io/api/v1/crates/lock_api/0.3.4/download",
        type = "tar.gz",
        sha256 = "c4da24a77a3d8a6d4862d95f72e6fdb9c09a643ecdb402d754004a557f2bec75",
        strip_prefix = "lock_api-0.3.4",
        build_file = Label("//crates/remote:BUILD.lock_api-0.3.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__log__0_4_14",
        url = "https://crates.io/api/v1/crates/log/0.4.14/download",
        type = "tar.gz",
        sha256 = "51b9bbe6c47d51fc3e1a9b945965946b4c44142ab8792c50835a980d362c2710",
        strip_prefix = "log-0.4.14",
        build_file = Label("//crates/remote:BUILD.log-0.4.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__memchr__2_4_0",
        url = "https://crates.io/api/v1/crates/memchr/2.4.0/download",
        type = "tar.gz",
        sha256 = "b16bd47d9e329435e309c58469fe0791c2d0d1ba96ec0954152a5ae2b04387dc",
        strip_prefix = "memchr-2.4.0",
        build_file = Label("//crates/remote:BUILD.memchr-2.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miniz_oxide__0_4_4",
        url = "https://crates.io/api/v1/crates/miniz_oxide/0.4.4/download",
        type = "tar.gz",
        sha256 = "a92518e98c078586bc6c934028adcca4c92a53d6a958196de835170a01d84e4b",
        strip_prefix = "miniz_oxide-0.4.4",
        build_file = Label("//crates/remote:BUILD.miniz_oxide-0.4.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__mio__0_7_13",
        url = "https://crates.io/api/v1/crates/mio/0.7.13/download",
        type = "tar.gz",
        sha256 = "8c2bdb6314ec10835cd3293dd268473a835c02b7b352e788be788b3c6ca6bb16",
        strip_prefix = "mio-0.7.13",
        build_file = Label("//crates/remote:BUILD.mio-0.7.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__miow__0_3_7",
        url = "https://crates.io/api/v1/crates/miow/0.3.7/download",
        type = "tar.gz",
        sha256 = "b9f1c5b025cda876f66ef43a113f91ebc9f4ccef34843000e0adf6ebbab84e21",
        strip_prefix = "miow-0.3.7",
        build_file = Label("//crates/remote:BUILD.miow-0.3.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__nom__5_1_2",
        url = "https://crates.io/api/v1/crates/nom/5.1.2/download",
        type = "tar.gz",
        sha256 = "ffb4262d26ed83a1c0a33a38fe2bb15797329c85770da05e6b828ddb782627af",
        strip_prefix = "nom-5.1.2",
        build_file = Label("//crates/remote:BUILD.nom-5.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__nom__6_1_2",
        url = "https://crates.io/api/v1/crates/nom/6.1.2/download",
        type = "tar.gz",
        sha256 = "e7413f999671bd4745a7b624bd370a569fb6bc574b23c83a3c5ed2e453f3d5e2",
        strip_prefix = "nom-6.1.2",
        build_file = Label("//crates/remote:BUILD.nom-6.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ntapi__0_3_6",
        url = "https://crates.io/api/v1/crates/ntapi/0.3.6/download",
        type = "tar.gz",
        sha256 = "3f6bb902e437b6d86e03cce10a7e2af662292c5dfef23b65899ea3ac9354ad44",
        strip_prefix = "ntapi-0.3.6",
        build_file = Label("//crates/remote:BUILD.ntapi-0.3.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_integer__0_1_44",
        url = "https://crates.io/api/v1/crates/num-integer/0.1.44/download",
        type = "tar.gz",
        sha256 = "d2cc698a63b549a70bc047073d2949cce27cd1c7b0a4a862d08a8031bc2801db",
        strip_prefix = "num-integer-0.1.44",
        build_file = Label("//crates/remote:BUILD.num-integer-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_traits__0_2_14",
        url = "https://crates.io/api/v1/crates/num-traits/0.2.14/download",
        type = "tar.gz",
        sha256 = "9a64b1ec5cda2586e284722486d802acf1f7dbdc623e2bfc57e65ca1cd099290",
        strip_prefix = "num-traits-0.2.14",
        build_file = Label("//crates/remote:BUILD.num-traits-0.2.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__num_cpus__1_13_0",
        url = "https://crates.io/api/v1/crates/num_cpus/1.13.0/download",
        type = "tar.gz",
        sha256 = "05499f3756671c15885fee9034446956fff3f243d6077b91e5767df161f766b3",
        strip_prefix = "num_cpus-1.13.0",
        build_file = Label("//crates/remote:BUILD.num_cpus-1.13.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__number_prefix__0_3_0",
        url = "https://crates.io/api/v1/crates/number_prefix/0.3.0/download",
        type = "tar.gz",
        sha256 = "17b02fc0ff9a9e4b35b3342880f48e896ebf69f2967921fe8646bf5b7125956a",
        strip_prefix = "number_prefix-0.3.0",
        build_file = Label("//crates/remote:BUILD.number_prefix-0.3.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__object__0_22_0",
        url = "https://crates.io/api/v1/crates/object/0.22.0/download",
        type = "tar.gz",
        sha256 = "8d3b63360ec3cb337817c2dbd47ab4a0f170d285d8e5a2064600f3def1402397",
        strip_prefix = "object-0.22.0",
        build_file = Label("//crates/remote:BUILD.object-0.22.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__once_cell__1_8_0",
        url = "https://crates.io/api/v1/crates/once_cell/1.8.0/download",
        type = "tar.gz",
        sha256 = "692fcb63b64b1758029e0a96ee63e049ce8c5948587f2f7208df04625e5f6b56",
        strip_prefix = "once_cell-1.8.0",
        build_file = Label("//crates/remote:BUILD.once_cell-1.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking__2_0_0",
        url = "https://crates.io/api/v1/crates/parking/2.0.0/download",
        type = "tar.gz",
        sha256 = "427c3892f9e783d91cc128285287e70a59e206ca452770ece88a76f7a3eddd72",
        strip_prefix = "parking-2.0.0",
        build_file = Label("//crates/remote:BUILD.parking-2.0.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot__0_10_2",
        url = "https://crates.io/api/v1/crates/parking_lot/0.10.2/download",
        type = "tar.gz",
        sha256 = "d3a704eb390aafdc107b0e392f56a82b668e3a71366993b5340f5833fd62505e",
        strip_prefix = "parking_lot-0.10.2",
        build_file = Label("//crates/remote:BUILD.parking_lot-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__parking_lot_core__0_7_2",
        url = "https://crates.io/api/v1/crates/parking_lot_core/0.7.2/download",
        type = "tar.gz",
        sha256 = "d58c7c768d4ba344e3e8d72518ac13e259d7c7ade24167003b8488e10b6740a3",
        strip_prefix = "parking_lot_core-0.7.2",
        build_file = Label("//crates/remote:BUILD.parking_lot_core-0.7.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pest__2_1_3",
        url = "https://crates.io/api/v1/crates/pest/2.1.3/download",
        type = "tar.gz",
        sha256 = "10f4872ae94d7b90ae48754df22fd42ad52ce740b8f370b03da4835417403e53",
        strip_prefix = "pest-2.1.3",
        build_file = Label("//crates/remote:BUILD.pest-2.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_project_lite__0_2_6",
        url = "https://crates.io/api/v1/crates/pin-project-lite/0.2.6/download",
        type = "tar.gz",
        sha256 = "dc0e1f259c92177c30a4c9d177246edd0a3568b25756a977d0632cf8fa37e905",
        strip_prefix = "pin-project-lite-0.2.6",
        build_file = Label("//crates/remote:BUILD.pin-project-lite-0.2.6.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pin_utils__0_1_0",
        url = "https://crates.io/api/v1/crates/pin-utils/0.1.0/download",
        type = "tar.gz",
        sha256 = "8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184",
        strip_prefix = "pin-utils-0.1.0",
        build_file = Label("//crates/remote:BUILD.pin-utils-0.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__pkg_config__0_3_19",
        url = "https://crates.io/api/v1/crates/pkg-config/0.3.19/download",
        type = "tar.gz",
        sha256 = "3831453b3449ceb48b6d9c7ad7c96d5ea673e9b470a1dc578c2ce6521230884c",
        strip_prefix = "pkg-config-0.3.19",
        build_file = Label("//crates/remote:BUILD.pkg-config-0.3.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__plain__0_2_3",
        url = "https://crates.io/api/v1/crates/plain/0.2.3/download",
        type = "tar.gz",
        sha256 = "b4596b6d070b27117e987119b4dac604f3c58cfb0b191112e24771b2faeac1a6",
        strip_prefix = "plain-0.2.3",
        build_file = Label("//crates/remote:BUILD.plain-0.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__polling__2_1_0",
        url = "https://crates.io/api/v1/crates/polling/2.1.0/download",
        type = "tar.gz",
        sha256 = "92341d779fa34ea8437ef4d82d440d5e1ce3f3ff7f824aa64424cd481f9a1f25",
        strip_prefix = "polling-2.1.0",
        build_file = Label("//crates/remote:BUILD.polling-2.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__probe_rs__0_10_1",
        url = "https://crates.io/api/v1/crates/probe-rs/0.10.1/download",
        type = "tar.gz",
        sha256 = "3f86f2646785d3d52887b1212ce05e5b58be9a02a5fd8690c1a24042899c30c0",
        strip_prefix = "probe-rs-0.10.1",
        patches = [
            "@rust_embedded//crates/custom:probe-rs.patch",
        ],
        patch_tool = "git apply",
        build_file = Label("//crates/remote:BUILD.probe-rs-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__probe_rs_cli_util__0_10_1",
        url = "https://crates.io/api/v1/crates/probe-rs-cli-util/0.10.1/download",
        type = "tar.gz",
        sha256 = "66cd195d85697d3c7e95d15dbf49ccb529eaa9defc68076e98cc3c89c96b5aa8",
        strip_prefix = "probe-rs-cli-util-0.10.1",
        build_file = Label("//crates/remote:BUILD.probe-rs-cli-util-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__probe_rs_rtt__0_10_1",
        url = "https://crates.io/api/v1/crates/probe-rs-rtt/0.10.1/download",
        type = "tar.gz",
        sha256 = "da12a3631895bd7c6266be38ee71937c7b3fbbe83d8e6caf88718220088909d2",
        strip_prefix = "probe-rs-rtt-0.10.1",
        build_file = Label("//crates/remote:BUILD.probe-rs-rtt-0.10.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__probe_rs_t2rust__0_7_0",
        url = "https://crates.io/api/v1/crates/probe-rs-t2rust/0.7.0/download",
        type = "tar.gz",
        sha256 = "856b6a25368ebfc253dbd0be8deb666a8a6e1d90eb630560d5f5cdcf8dc35b7f",
        strip_prefix = "probe-rs-t2rust-0.7.0",
        build_file = Label("//crates/remote:BUILD.probe-rs-t2rust-0.7.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_error__1_0_4",
        url = "https://crates.io/api/v1/crates/proc-macro-error/1.0.4/download",
        type = "tar.gz",
        sha256 = "da25490ff9892aab3fcf7c36f08cfb902dd3e71ca0f9f9517bea02a73a5ce38c",
        strip_prefix = "proc-macro-error-1.0.4",
        build_file = Label("//crates/remote:BUILD.proc-macro-error-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_error_attr__1_0_4",
        url = "https://crates.io/api/v1/crates/proc-macro-error-attr/1.0.4/download",
        type = "tar.gz",
        sha256 = "a1be40180e52ecc98ad80b184934baf3d0d29f979574e439af5a55274b35f869",
        strip_prefix = "proc-macro-error-attr-1.0.4",
        build_file = Label("//crates/remote:BUILD.proc-macro-error-attr-1.0.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_hack__0_5_19",
        url = "https://crates.io/api/v1/crates/proc-macro-hack/0.5.19/download",
        type = "tar.gz",
        sha256 = "dbf0c48bc1d91375ae5c3cd81e3722dff1abcf81a30960240640d223f59fe0e5",
        strip_prefix = "proc-macro-hack-0.5.19",
        build_file = Label("//crates/remote:BUILD.proc-macro-hack-0.5.19.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro_nested__0_1_7",
        url = "https://crates.io/api/v1/crates/proc-macro-nested/0.1.7/download",
        type = "tar.gz",
        sha256 = "bc881b2c22681370c6a780e47af9840ef841837bc98118431d4e1868bd0c1086",
        strip_prefix = "proc-macro-nested-0.1.7",
        build_file = Label("//crates/remote:BUILD.proc-macro-nested-0.1.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__proc_macro2__1_0_27",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.27/download",
        type = "tar.gz",
        sha256 = "f0d8caf72986c1a598726adc988bb5984792ef84f5ee5aa50209145ee8077038",
        strip_prefix = "proc-macro2-1.0.27",
        build_file = Label("//crates/remote:BUILD.proc-macro2-1.0.27.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quick_error__1_2_3",
        url = "https://crates.io/api/v1/crates/quick-error/1.2.3/download",
        type = "tar.gz",
        sha256 = "a1d01941d82fa2ab50be1e79e6714289dd7cde78eba4c074bc5a4374f650dfe0",
        strip_prefix = "quick-error-1.2.3",
        build_file = Label("//crates/remote:BUILD.quick-error-1.2.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__quote__1_0_9",
        url = "https://crates.io/api/v1/crates/quote/1.0.9/download",
        type = "tar.gz",
        sha256 = "c3d0b9745dc2debf507c8422de05d7226cc1f0644216dfdfead988f9b1ab32a7",
        strip_prefix = "quote-1.0.9",
        build_file = Label("//crates/remote:BUILD.quote-1.0.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__radium__0_5_3",
        url = "https://crates.io/api/v1/crates/radium/0.5.3/download",
        type = "tar.gz",
        sha256 = "941ba9d78d8e2f7ce474c015eea4d9c6d25b6a3327f9832ee29a4de27f91bbb8",
        strip_prefix = "radium-0.5.3",
        build_file = Label("//crates/remote:BUILD.radium-0.5.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_1_57",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.1.57/download",
        type = "tar.gz",
        sha256 = "41cc0f7e4d5d4544e8861606a285bb08d3e70712ccc7d2b84d7c0ccfaf4b05ce",
        strip_prefix = "redox_syscall-0.1.57",
        build_file = Label("//crates/remote:BUILD.redox_syscall-0.1.57.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__redox_syscall__0_2_9",
        url = "https://crates.io/api/v1/crates/redox_syscall/0.2.9/download",
        type = "tar.gz",
        sha256 = "5ab49abadf3f9e1c4bc499e8845e152ad87d2ad2d30371841171169e9d75feee",
        strip_prefix = "redox_syscall-0.2.9",
        build_file = Label("//crates/remote:BUILD.redox_syscall-0.2.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex__1_5_4",
        url = "https://crates.io/api/v1/crates/regex/1.5.4/download",
        type = "tar.gz",
        sha256 = "d07a8629359eb56f1e2fb1652bb04212c072a87ba68546a04065d525673ac461",
        strip_prefix = "regex-1.5.4",
        build_file = Label("//crates/remote:BUILD.regex-1.5.4.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__regex_syntax__0_6_25",
        url = "https://crates.io/api/v1/crates/regex-syntax/0.6.25/download",
        type = "tar.gz",
        sha256 = "f497285884f3fcff424ffc933e56d7cbca511def0c9831a7f9b5f6153e3cc89b",
        strip_prefix = "regex-syntax-0.6.25",
        build_file = Label("//crates/remote:BUILD.regex-syntax-0.6.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rle_decode_fast__1_0_1",
        url = "https://crates.io/api/v1/crates/rle-decode-fast/1.0.1/download",
        type = "tar.gz",
        sha256 = "cabe4fa914dec5870285fa7f71f602645da47c486e68486d2b4ceb4a343e90ac",
        strip_prefix = "rle-decode-fast-1.0.1",
        build_file = Label("//crates/remote:BUILD.rle-decode-fast-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__rusb__0_6_5",
        url = "https://crates.io/api/v1/crates/rusb/0.6.5/download",
        type = "tar.gz",
        sha256 = "f6f32cd45962594f9f8cd4547b5757132715600e2c8840aa9ccd3d1a9ed6fdc6",
        strip_prefix = "rusb-0.6.5",
        build_file = Label("//crates/remote:BUILD.rusb-0.6.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ryu__1_0_5",
        url = "https://crates.io/api/v1/crates/ryu/1.0.5/download",
        type = "tar.gz",
        sha256 = "71d301d4193d031abdd79ff7e3dd721168a9572ef3fe51a1517aba235bd8f86e",
        strip_prefix = "ryu-1.0.5",
        build_file = Label("//crates/remote:BUILD.ryu-1.0.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scopeguard__1_1_0",
        url = "https://crates.io/api/v1/crates/scopeguard/1.1.0/download",
        type = "tar.gz",
        sha256 = "d29ab0c6d3fc0ee92fe66e2d99f700eab17a8d57d1c1d3b748380fb20baa78cd",
        strip_prefix = "scopeguard-1.1.0",
        build_file = Label("//crates/remote:BUILD.scopeguard-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scroll__0_10_2",
        url = "https://crates.io/api/v1/crates/scroll/0.10.2/download",
        type = "tar.gz",
        sha256 = "fda28d4b4830b807a8b43f7b0e6b5df875311b3e7621d84577188c175b6ec1ec",
        strip_prefix = "scroll-0.10.2",
        build_file = Label("//crates/remote:BUILD.scroll-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__scroll_derive__0_10_5",
        url = "https://crates.io/api/v1/crates/scroll_derive/0.10.5/download",
        type = "tar.gz",
        sha256 = "aaaae8f38bb311444cfb7f1979af0bc9240d95795f75f9ceddf6a59b79ceffa0",
        strip_prefix = "scroll_derive-0.10.5",
        build_file = Label("//crates/remote:BUILD.scroll_derive-0.10.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__semver__0_11_0",
        url = "https://crates.io/api/v1/crates/semver/0.11.0/download",
        type = "tar.gz",
        sha256 = "f301af10236f6df4160f7c3f04eec6dbc70ace82d23326abad5edee88801c6b6",
        strip_prefix = "semver-0.11.0",
        build_file = Label("//crates/remote:BUILD.semver-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__semver_parser__0_10_2",
        url = "https://crates.io/api/v1/crates/semver-parser/0.10.2/download",
        type = "tar.gz",
        sha256 = "00b0bef5b7f9e0df16536d3961cfb6e84331c065b4066afb39768d0e319411f7",
        strip_prefix = "semver-parser-0.10.2",
        build_file = Label("//crates/remote:BUILD.semver-parser-0.10.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde__1_0_126",
        url = "https://crates.io/api/v1/crates/serde/1.0.126/download",
        type = "tar.gz",
        sha256 = "ec7505abeacaec74ae4778d9d9328fe5a5d04253220a85c4ee022239fc996d03",
        strip_prefix = "serde-1.0.126",
        build_file = Label("//crates/remote:BUILD.serde-1.0.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_derive__1_0_126",
        url = "https://crates.io/api/v1/crates/serde_derive/1.0.126/download",
        type = "tar.gz",
        sha256 = "963a7dbc9895aeac7ac90e74f34a5d5261828f79df35cbed41e10189d3804d43",
        strip_prefix = "serde_derive-1.0.126",
        build_file = Label("//crates/remote:BUILD.serde_derive-1.0.126.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_json__1_0_64",
        url = "https://crates.io/api/v1/crates/serde_json/1.0.64/download",
        type = "tar.gz",
        sha256 = "799e97dc9fdae36a5c8b8f2cae9ce2ee9fdce2058c57a93e6099d919fd982f79",
        strip_prefix = "serde_json-1.0.64",
        build_file = Label("//crates/remote:BUILD.serde_json-1.0.64.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__serde_yaml__0_8_17",
        url = "https://crates.io/api/v1/crates/serde_yaml/0.8.17/download",
        type = "tar.gz",
        sha256 = "15654ed4ab61726bf918a39cb8d98a2e2995b002387807fa6ba58fdf7f59bb23",
        strip_prefix = "serde_yaml-0.8.17",
        build_file = Label("//crates/remote:BUILD.serde_yaml-0.8.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__signal_hook__0_1_17",
        url = "https://crates.io/api/v1/crates/signal-hook/0.1.17/download",
        type = "tar.gz",
        sha256 = "7e31d442c16f047a671b5a71e2161d6e68814012b7f5379d269ebd915fac2729",
        strip_prefix = "signal-hook-0.1.17",
        build_file = Label("//crates/remote:BUILD.signal-hook-0.1.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__signal_hook_registry__1_4_0",
        url = "https://crates.io/api/v1/crates/signal-hook-registry/1.4.0/download",
        type = "tar.gz",
        sha256 = "e51e73328dc4ac0c7ccbda3a494dfa03df1de2f46018127f60c693f2648455b0",
        strip_prefix = "signal-hook-registry-1.4.0",
        build_file = Label("//crates/remote:BUILD.signal-hook-registry-1.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__simplelog__0_8_0",
        url = "https://crates.io/api/v1/crates/simplelog/0.8.0/download",
        type = "tar.gz",
        sha256 = "2b2736f58087298a448859961d3f4a0850b832e72619d75adc69da7993c2cd3c",
        strip_prefix = "simplelog-0.8.0",
        build_file = Label("//crates/remote:BUILD.simplelog-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__slab__0_4_3",
        url = "https://crates.io/api/v1/crates/slab/0.4.3/download",
        type = "tar.gz",
        sha256 = "f173ac3d1a7e3b28003f40de0b5ce7fe2710f9b9dc3fc38664cebee46b3b6527",
        strip_prefix = "slab-0.4.3",
        build_file = Label("//crates/remote:BUILD.slab-0.4.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__smallvec__1_6_1",
        url = "https://crates.io/api/v1/crates/smallvec/1.6.1/download",
        type = "tar.gz",
        sha256 = "fe0f37c9e8f3c5a4a66ad655a93c74daac4ad00c441533bf5c6e7990bb42604e",
        strip_prefix = "smallvec-1.6.1",
        build_file = Label("//crates/remote:BUILD.smallvec-1.6.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__socket2__0_4_0",
        url = "https://crates.io/api/v1/crates/socket2/0.4.0/download",
        type = "tar.gz",
        sha256 = "9e3dfc207c526015c632472a77be09cf1b6e46866581aecae5cc38fb4235dea2",
        strip_prefix = "socket2-0.4.0",
        build_file = Label("//crates/remote:BUILD.socket2-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__stable_deref_trait__1_2_0",
        url = "https://crates.io/api/v1/crates/stable_deref_trait/1.2.0/download",
        type = "tar.gz",
        sha256 = "a8f112729512f8e442d81f95a8a7ddf2b7c6b8a1a6f509a95864142b30cab2d3",
        strip_prefix = "stable_deref_trait-1.2.0",
        build_file = Label("//crates/remote:BUILD.stable_deref_trait-1.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__static_assertions__1_1_0",
        url = "https://crates.io/api/v1/crates/static_assertions/1.1.0/download",
        type = "tar.gz",
        sha256 = "a2eb9349b6444b326872e140eb1cf5e7c522154d69e7a0ffb0fb81c06b37543f",
        strip_prefix = "static_assertions-1.1.0",
        build_file = Label("//crates/remote:BUILD.static_assertions-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__strsim__0_8_0",
        url = "https://crates.io/api/v1/crates/strsim/0.8.0/download",
        type = "tar.gz",
        sha256 = "8ea5119cdb4c55b55d432abb513a0429384878c15dde60cc77b1c99de1a95a6a",
        strip_prefix = "strsim-0.8.0",
        build_file = Label("//crates/remote:BUILD.strsim-0.8.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__structopt__0_3_21",
        url = "https://crates.io/api/v1/crates/structopt/0.3.21/download",
        type = "tar.gz",
        sha256 = "5277acd7ee46e63e5168a80734c9f6ee81b1367a7d8772a2d765df2a3705d28c",
        strip_prefix = "structopt-0.3.21",
        build_file = Label("//crates/remote:BUILD.structopt-0.3.21.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__structopt_derive__0_4_14",
        url = "https://crates.io/api/v1/crates/structopt-derive/0.4.14/download",
        type = "tar.gz",
        sha256 = "5ba9cdfda491b814720b6b06e0cac513d922fc407582032e8706e9f137976f90",
        strip_prefix = "structopt-derive-0.4.14",
        build_file = Label("//crates/remote:BUILD.structopt-derive-0.4.14.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__svg__0_8_2",
        url = "https://crates.io/api/v1/crates/svg/0.8.2/download",
        type = "tar.gz",
        sha256 = "3bdb25a4593d6656239319426f4025f7a658157e25e89f0e0319d7516d46042d",
        strip_prefix = "svg-0.8.2",
        build_file = Label("//crates/remote:BUILD.svg-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__syn__1_0_73",
        url = "https://crates.io/api/v1/crates/syn/1.0.73/download",
        type = "tar.gz",
        sha256 = "f71489ff30030d2ae598524f61326b902466f72a0fb1a8564c001cc63425bcc7",
        strip_prefix = "syn-1.0.73",
        build_file = Label("//crates/remote:BUILD.syn-1.0.73.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tap__1_0_1",
        url = "https://crates.io/api/v1/crates/tap/1.0.1/download",
        type = "tar.gz",
        sha256 = "55937e1799185b12863d447f42597ed69d9928686b8d88a1df17376a097d8369",
        strip_prefix = "tap-1.0.1",
        build_file = Label("//crates/remote:BUILD.tap-1.0.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tar__0_4_35",
        url = "https://crates.io/api/v1/crates/tar/0.4.35/download",
        type = "tar.gz",
        sha256 = "7d779dc6aeff029314570f666ec83f19df7280bb36ef338442cfa8c604021b80",
        strip_prefix = "tar-0.4.35",
        build_file = Label("//crates/remote:BUILD.tar-0.4.35.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__termcolor__1_1_2",
        url = "https://crates.io/api/v1/crates/termcolor/1.1.2/download",
        type = "tar.gz",
        sha256 = "2dfed899f0eb03f32ee8c6a0aabdb8a7949659e3466561fc0adf54e26d88c5f4",
        strip_prefix = "termcolor-1.1.2",
        build_file = Label("//crates/remote:BUILD.termcolor-1.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__terminal_size__0_1_17",
        url = "https://crates.io/api/v1/crates/terminal_size/0.1.17/download",
        type = "tar.gz",
        sha256 = "633c1a546cee861a1a6d0dc69ebeca693bf4296661ba7852b9d21d159e0506df",
        strip_prefix = "terminal_size-0.1.17",
        build_file = Label("//crates/remote:BUILD.terminal_size-0.1.17.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__textwrap__0_11_0",
        url = "https://crates.io/api/v1/crates/textwrap/0.11.0/download",
        type = "tar.gz",
        sha256 = "d326610f408c7a4eb6f51c37c330e496b08506c9457c9d34287ecc38809fb060",
        strip_prefix = "textwrap-0.11.0",
        build_file = Label("//crates/remote:BUILD.textwrap-0.11.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__textwrap__0_12_1",
        url = "https://crates.io/api/v1/crates/textwrap/0.12.1/download",
        type = "tar.gz",
        sha256 = "203008d98caf094106cfaba70acfed15e18ed3ddb7d94e49baec153a2b462789",
        strip_prefix = "textwrap-0.12.1",
        build_file = Label("//crates/remote:BUILD.textwrap-0.12.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror__1_0_25",
        url = "https://crates.io/api/v1/crates/thiserror/1.0.25/download",
        type = "tar.gz",
        sha256 = "fa6f76457f59514c7eeb4e59d891395fab0b2fd1d40723ae737d64153392e9c6",
        strip_prefix = "thiserror-1.0.25",
        build_file = Label("//crates/remote:BUILD.thiserror-1.0.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__thiserror_impl__1_0_25",
        url = "https://crates.io/api/v1/crates/thiserror-impl/1.0.25/download",
        type = "tar.gz",
        sha256 = "8a36768c0fbf1bb15eca10defa29526bda730a2376c2ab4393ccfa16fb1a318d",
        strip_prefix = "thiserror-impl-1.0.25",
        build_file = Label("//crates/remote:BUILD.thiserror-impl-1.0.25.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__time__0_1_44",
        url = "https://crates.io/api/v1/crates/time/0.1.44/download",
        type = "tar.gz",
        sha256 = "6db9e6914ab8b1ae1c260a4ae7a49b6c5611b40328a735b21862567685e73255",
        strip_prefix = "time-0.1.44",
        build_file = Label("//crates/remote:BUILD.time-0.1.44.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__toml__0_5_8",
        url = "https://crates.io/api/v1/crates/toml/0.5.8/download",
        type = "tar.gz",
        sha256 = "a31142970826733df8241ef35dc040ef98c679ab14d7c3e54d827099b3acecaa",
        strip_prefix = "toml-0.5.8",
        build_file = Label("//crates/remote:BUILD.toml-0.5.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__tui__0_12_0",
        url = "https://crates.io/api/v1/crates/tui/0.12.0/download",
        type = "tar.gz",
        sha256 = "c2eaeee894a1e9b90f80aa466fe59154fdb471980b5e104d8836fcea309ae17e",
        strip_prefix = "tui-0.12.0",
        build_file = Label("//crates/remote:BUILD.tui-0.12.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__ucd_trie__0_1_3",
        url = "https://crates.io/api/v1/crates/ucd-trie/0.1.3/download",
        type = "tar.gz",
        sha256 = "56dee185309b50d1f11bfedef0fe6d036842e3fb77413abef29f8f8d1c5d4c1c",
        strip_prefix = "ucd-trie-0.1.3",
        build_file = Label("//crates/remote:BUILD.ucd-trie-0.1.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_segmentation__1_7_1",
        url = "https://crates.io/api/v1/crates/unicode-segmentation/1.7.1/download",
        type = "tar.gz",
        sha256 = "bb0d2e7be6ae3a5fa87eed5fb451aff96f2573d2694942e40543ae0bbe19c796",
        strip_prefix = "unicode-segmentation-1.7.1",
        build_file = Label("//crates/remote:BUILD.unicode-segmentation-1.7.1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_width__0_1_8",
        url = "https://crates.io/api/v1/crates/unicode-width/0.1.8/download",
        type = "tar.gz",
        sha256 = "9337591893a19b88d8d87f2cec1e73fad5cdfd10e5a6f349f498ad6ea2ffb1e3",
        strip_prefix = "unicode-width-0.1.8",
        build_file = Label("//crates/remote:BUILD.unicode-width-0.1.8.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__unicode_xid__0_2_2",
        url = "https://crates.io/api/v1/crates/unicode-xid/0.2.2/download",
        type = "tar.gz",
        sha256 = "8ccb82d61f80a663efe1f787a51b16b5a51e3314d6ac365b08639f52387b33f3",
        strip_prefix = "unicode-xid-0.2.2",
        build_file = Label("//crates/remote:BUILD.unicode-xid-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__value_bag__1_0_0_alpha_7",
        url = "https://crates.io/api/v1/crates/value-bag/1.0.0-alpha.7/download",
        type = "tar.gz",
        sha256 = "dd320e1520f94261153e96f7534476ad869c14022aee1e59af7c778075d840ae",
        strip_prefix = "value-bag-1.0.0-alpha.7",
        build_file = Label("//crates/remote:BUILD.value-bag-1.0.0-alpha.7.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vcpkg__0_2_13",
        url = "https://crates.io/api/v1/crates/vcpkg/0.2.13/download",
        type = "tar.gz",
        sha256 = "025ce40a007e1907e58d5bc1a594def78e5573bb0b1160bc389634e8f12e4faa",
        strip_prefix = "vcpkg-0.2.13",
        build_file = Label("//crates/remote:BUILD.vcpkg-0.2.13.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__vec_map__0_8_2",
        url = "https://crates.io/api/v1/crates/vec_map/0.8.2/download",
        type = "tar.gz",
        sha256 = "f1bddf1187be692e79c5ffeab891132dfb0f236ed36a43c7ed39f1165ee20191",
        strip_prefix = "vec_map-0.8.2",
        build_file = Label("//crates/remote:BUILD.vec_map-0.8.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__version_check__0_9_3",
        url = "https://crates.io/api/v1/crates/version_check/0.9.3/download",
        type = "tar.gz",
        sha256 = "5fecdca9a5291cc2b8dcf7dc02453fee791a280f3743cb0905f8822ae463b3fe",
        strip_prefix = "version_check-0.9.3",
        build_file = Label("//crates/remote:BUILD.version_check-0.9.3.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__waker_fn__1_1_0",
        url = "https://crates.io/api/v1/crates/waker-fn/1.1.0/download",
        type = "tar.gz",
        sha256 = "9d5b2c62b4012a3e1eca5a7e077d13b3bf498c4073e33ccd58626607748ceeca",
        strip_prefix = "waker-fn-1.1.0",
        build_file = Label("//crates/remote:BUILD.waker-fn-1.1.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasi__0_10_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f",
        strip_prefix = "wasi-0.10.0+wasi-snapshot-preview1",
        build_file = Label("//crates/remote:BUILD.wasi-0.10.0+wasi-snapshot-preview1.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen/0.2.74/download",
        type = "tar.gz",
        sha256 = "d54ee1d4ed486f78874278e63e4069fc1ab9f6a18ca492076ffb90c5eb2997fd",
        strip_prefix = "wasm-bindgen-0.2.74",
        build_file = Label("//crates/remote:BUILD.wasm-bindgen-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_backend__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-backend/0.2.74/download",
        type = "tar.gz",
        sha256 = "3b33f6a0694ccfea53d94db8b2ed1c3a8a4c86dd936b13b9f0a15ec4a451b900",
        strip_prefix = "wasm-bindgen-backend-0.2.74",
        build_file = Label("//crates/remote:BUILD.wasm-bindgen-backend-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_futures__0_4_24",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-futures/0.4.24/download",
        type = "tar.gz",
        sha256 = "5fba7978c679d53ce2d0ac80c8c175840feb849a161664365d1287b41f2e67f1",
        strip_prefix = "wasm-bindgen-futures-0.4.24",
        build_file = Label("//crates/remote:BUILD.wasm-bindgen-futures-0.4.24.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro/0.2.74/download",
        type = "tar.gz",
        sha256 = "088169ca61430fe1e58b8096c24975251700e7b1f6fd91cc9d59b04fb9b18bd4",
        strip_prefix = "wasm-bindgen-macro-0.2.74",
        build_file = Label("//crates/remote:BUILD.wasm-bindgen-macro-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_macro_support__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-macro-support/0.2.74/download",
        type = "tar.gz",
        sha256 = "be2241542ff3d9f241f5e2cb6dd09b37efe786df8851c54957683a49f0987a97",
        strip_prefix = "wasm-bindgen-macro-support-0.2.74",
        build_file = Label("//crates/remote:BUILD.wasm-bindgen-macro-support-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasm_bindgen_shared__0_2_74",
        url = "https://crates.io/api/v1/crates/wasm-bindgen-shared/0.2.74/download",
        type = "tar.gz",
        sha256 = "d7cff876b8f18eed75a66cf49b65e7f967cb354a7aa16003fb55dbfd25b44b4f",
        strip_prefix = "wasm-bindgen-shared-0.2.74",
        build_file = Label("//crates/remote:BUILD.wasm-bindgen-shared-0.2.74.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wasmparser__0_57_0",
        url = "https://crates.io/api/v1/crates/wasmparser/0.57.0/download",
        type = "tar.gz",
        sha256 = "32fddd575d477c6e9702484139cf9f23dcd554b06d185ed0f56c857dd3a47aa6",
        strip_prefix = "wasmparser-0.57.0",
        build_file = Label("//crates/remote:BUILD.wasmparser-0.57.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__web_sys__0_3_51",
        url = "https://crates.io/api/v1/crates/web-sys/0.3.51/download",
        type = "tar.gz",
        sha256 = "e828417b379f3df7111d3a2a9e5753706cae29c41f7c4029ee9fd77f3e09e582",
        strip_prefix = "web-sys-0.3.51",
        build_file = Label("//crates/remote:BUILD.web-sys-0.3.51.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wepoll_ffi__0_1_2",
        url = "https://crates.io/api/v1/crates/wepoll-ffi/0.1.2/download",
        type = "tar.gz",
        sha256 = "d743fdedc5c64377b5fc2bc036b01c7fd642205a0d96356034ae3404d49eb7fb",
        strip_prefix = "wepoll-ffi-0.1.2",
        build_file = Label("//crates/remote:BUILD.wepoll-ffi-0.1.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi__0_3_9",
        url = "https://crates.io/api/v1/crates/winapi/0.3.9/download",
        type = "tar.gz",
        sha256 = "5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//crates/remote:BUILD.winapi-0.3.9.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-i686-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//crates/remote:BUILD.winapi-i686-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_util__0_1_5",
        url = "https://crates.io/api/v1/crates/winapi-util/0.1.5/download",
        type = "tar.gz",
        sha256 = "70ec6ce85bb158151cae5e5c87f95a8e97d2c0c4b001223f33a334e3ce5de178",
        strip_prefix = "winapi-util-0.1.5",
        build_file = Label("//crates/remote:BUILD.winapi-util-0.1.5.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates.io/api/v1/crates/winapi-x86_64-pc-windows-gnu/0.4.0/download",
        type = "tar.gz",
        sha256 = "712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//crates/remote:BUILD.winapi-x86_64-pc-windows-gnu-0.4.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__wyz__0_2_0",
        url = "https://crates.io/api/v1/crates/wyz/0.2.0/download",
        type = "tar.gz",
        sha256 = "85e60b0d1b5f99db2556934e21937020776a5d31520bf169e851ac44e6420214",
        strip_prefix = "wyz-0.2.0",
        build_file = Label("//crates/remote:BUILD.wyz-0.2.0.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__xattr__0_2_2",
        url = "https://crates.io/api/v1/crates/xattr/0.2.2/download",
        type = "tar.gz",
        sha256 = "244c3741f4240ef46274860397c7c74e50eb23624996930e484c16679633a54c",
        strip_prefix = "xattr-0.2.2",
        build_file = Label("//crates/remote:BUILD.xattr-0.2.2.bazel"),
    )

    maybe(
        http_archive,
        name = "raze__yaml_rust__0_4_5",
        url = "https://crates.io/api/v1/crates/yaml-rust/0.4.5/download",
        type = "tar.gz",
        sha256 = "56c1936c4cc7a1c9ab21a1ebb602eb942ba868cbd44a99cb7cdc5892335e1c85",
        strip_prefix = "yaml-rust-0.4.5",
        build_file = Label("//crates/remote:BUILD.yaml-rust-0.4.5.bazel"),
    )
