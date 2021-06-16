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
        name = "raze__byteorder__1_4_3",
        url = "https://crates.io/api/v1/crates/byteorder/1.4.3/download",
        type = "tar.gz",
        sha256 = "14c189c53d098945499cdfa7ecc63567cf3886b3332b312a5b4585d8d3a6a610",
        strip_prefix = "byteorder-1.4.3",
        build_file = Label("//crates/remote:BUILD.byteorder-1.4.3.bazel"),
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
        name = "raze__cc__1_0_68",
        url = "https://crates.io/api/v1/crates/cc/1.0.68/download",
        type = "tar.gz",
        sha256 = "4a72c244c1ff497a746a7e1fb3d14bd08420ecda70c8f25c7112f2781652d787",
        strip_prefix = "cc-1.0.68",
        build_file = Label("//crates/remote:BUILD.cc-1.0.68.bazel"),
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
        name = "raze__colored__2_0_0",
        url = "https://crates.io/api/v1/crates/colored/2.0.0/download",
        type = "tar.gz",
        sha256 = "b3616f750b84d8f0de8a58bda93e08e2a81ad3f523089b05f1dffecab48c6cbd",
        strip_prefix = "colored-2.0.0",
        build_file = Label("//crates/remote:BUILD.colored-2.0.0.bazel"),
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
        name = "raze__env_logger__0_8_4",
        url = "https://crates.io/api/v1/crates/env_logger/0.8.4/download",
        type = "tar.gz",
        sha256 = "a19187fea3ac7e84da7dacf48de0c45d63c6a76f9490dae389aead16c243fce3",
        strip_prefix = "env_logger-0.8.4",
        build_file = Label("//crates/remote:BUILD.env_logger-0.8.4.bazel"),
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
        name = "raze__hidapi__1_2_6",
        url = "https://crates.io/api/v1/crates/hidapi/1.2.6/download",
        type = "tar.gz",
        sha256 = "81e07da7e8614133e88b3a93b7352eb3729e3ccd82d5ab661adf23bef1761bf8",
        strip_prefix = "hidapi-1.2.6",
        build_file = Label("//crates/remote:BUILD.hidapi-1.2.6.bazel"),
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
        name = "raze__lazy_static__1_4_0",
        url = "https://crates.io/api/v1/crates/lazy_static/1.4.0/download",
        type = "tar.gz",
        sha256 = "e2abad23fbc42b3700f2f279844dc832adb2b2eb069b2df918f455c4e18cc646",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//crates/remote:BUILD.lazy_static-1.4.0.bazel"),
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
        name = "raze__pest__2_1_3",
        url = "https://crates.io/api/v1/crates/pest/2.1.3/download",
        type = "tar.gz",
        sha256 = "10f4872ae94d7b90ae48754df22fd42ad52ce740b8f370b03da4835417403e53",
        strip_prefix = "pest-2.1.3",
        build_file = Label("//crates/remote:BUILD.pest-2.1.3.bazel"),
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
        name = "raze__probe_rs__0_10_1",
        url = "https://crates.io/api/v1/crates/probe-rs/0.10.1/download",
        type = "tar.gz",
        sha256 = "3f86f2646785d3d52887b1212ce05e5b58be9a02a5fd8690c1a24042899c30c0",
        strip_prefix = "probe-rs-0.10.1",
        build_file = Label("//crates/remote:BUILD.probe-rs-0.10.1.bazel"),
        patches = [Label("//crates/custom:probe-rs.patch")],
        patch_tool = "git apply", # TODO: needed due to spaces in file names.
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
        name = "raze__proc_macro2__1_0_27",
        url = "https://crates.io/api/v1/crates/proc-macro2/1.0.27/download",
        type = "tar.gz",
        sha256 = "f0d8caf72986c1a598726adc988bb5984792ef84f5ee5aa50209145ee8077038",
        strip_prefix = "proc-macro2-1.0.27",
        build_file = Label("//crates/remote:BUILD.proc-macro2-1.0.27.bazel"),
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
        name = "raze__simplelog__0_8_0",
        url = "https://crates.io/api/v1/crates/simplelog/0.8.0/download",
        type = "tar.gz",
        sha256 = "2b2736f58087298a448859961d3f4a0850b832e72619d75adc69da7993c2cd3c",
        strip_prefix = "simplelog-0.8.0",
        build_file = Label("//crates/remote:BUILD.simplelog-0.8.0.bazel"),
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
        name = "raze__wasi__0_10_0_wasi_snapshot_preview1",
        url = "https://crates.io/api/v1/crates/wasi/0.10.0+wasi-snapshot-preview1/download",
        type = "tar.gz",
        sha256 = "1a143597ca7c7793eff794def352d41792a93c481eb1042423ff7ff72ba2c31f",
        strip_prefix = "wasi-0.10.0+wasi-snapshot-preview1",
        build_file = Label("//crates/remote:BUILD.wasi-0.10.0+wasi-snapshot-preview1.bazel"),
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
