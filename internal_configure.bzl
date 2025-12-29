load("@bazel_tools//tools/build_defs/repo:local.bzl", "new_local_repository")

def _internal_configure_extension_impl(_):
    new_local_repository(
        name = "kiss_icp",
        build_file = "//:kiss_icp.BUILD",
        path = "/workspaces/densha/navigation/libraries/kiss-icp",
    )

internal_configure_extension = module_extension(implementation = _internal_configure_extension_impl)
