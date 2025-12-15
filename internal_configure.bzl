load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def _internal_configure_extension_impl(_):
    http_archive(
        name = "kiss_icp",
        build_file = "//:kiss_icp.BUILD",
        strip_prefix = "kiss-icp-1.2.3",
        integrity = "sha256-CHqXRcWyzDBOcr+HkpNx7LECyLdcAmFixY1kPWr4hJw=",
        urls = ["https://github.com/PRBonn/kiss-icp/archive/refs/tags/v1.2.3.tar.gz"],
        patch_strip = 1,
        patches = [
            "patches/debug-info-in-registration.patch",
        ],
    )
internal_configure_extension = module_extension(implementation = _internal_configure_extension_impl)
