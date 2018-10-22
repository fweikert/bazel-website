# Definition of redirects to generate in the Jekyll tree.

def _make_doc_redirects(docs):
  redirects = {}
  for doc in docs:
    old_unversioned = "docs/%s" % doc
    old_versioned = "versions/master/%s" % old_unversioned
    new = "https://docs.bazel.build/%s" % doc
    redirects[old_unversioned] = new
    redirects[old_versioned] = new
  return redirects

def _make_blog_redirects(posts):
  redirects = {
      "blog/index.html": "https://blog.bazel.build",
  }
  for post in posts:
    old = "blog/%s" % post
    new = "https://blog.bazel.build/%s" % post
    redirects[old] = new
  return redirects

def _make_redirects(docs=[], blog=[], other={}):
  return dict(_make_doc_redirects(docs).items() +
              _make_blog_redirects(blog).items() +
              other.items())

# Dict mapping path of site page to new URL to redirect to.
BAZEL_SITE_REDIRECTS = _make_redirects(
    docs = [
        "bazel-overview.html",
        "bazel-user-manual.html",
        "best-practices.html",
        "build-ref.html",
        "command-line-reference.html",
        "cpp.html",
        "external.html",
        "getting-started.html",
        "install.html",
        "install-compile-source.html",
        "install-os-x.html",
        "install-ubuntu.html",
        "install-windows.html",
        "mobile-install.html",
        "output_directories.html",
        "query-how-to.html",
        "query.html",
        "rule-challenges.html",
        "skyframe.html",
        "support.html",
        "test-encyclopedia.html",
        "windows.html",

        # Build Encyclopedia.
        "be/android.html",
        "be/c-cpp.html",
        "be/common-definitions.html",
        "be/docker.html",
        "be/extra-actions.html",
        "be/functions.html",
        "be/general.html",
        "be/java.html",
        "be/make-variables.html",
        "be/objective-c.html",
        "be/overview.html",
        "be/pkg.html",
        "be/platform.html",
        "be/predefined-python-variables.html",
        "be/protocol-buffer.html",
        "be/python.html",
        "be/shell.html",
        "be/workspace.html",

        # Skylark
        "skylark/aspects.html",
        "skylark/build-style.html",
        "skylark/bzl-style.html",
        "skylark/concepts.html",
        "skylark/cookbook.html",
        "skylark/deploying.html",
        "skylark/depsets.html",
        "skylark/index.html",
        "skylark/language.html",
        "skylark/macros.html",
        "skylark/repository_rules.html",
        "skylark/rules.html",
        "skylark/errors/read-only-variable.html",

        # Skylark Library
        "skylark/lib/Action.html",
        "skylark/lib/AndroidSkylarkApiProvider.html",
        "skylark/lib/AndroidSkylarkIdlInfo.html",
        "skylark/lib/Aspect.html",
        "skylark/lib/CcSkylarkApiProvider.html",
        "skylark/lib/CcToolchainInfo.html",
        "skylark/lib/ConfigurationTransition.html",
        "skylark/lib/ConstraintSettingInfo.html",
        "skylark/lib/ConstraintValueProvider.html",
        "skylark/lib/DottedVersion.html",
        "skylark/lib/FeatureFlagInfo.html",
        "skylark/lib/File.html",
        "skylark/lib/FileType.html",
        "skylark/lib/FilesToRunProvider.html",
        "skylark/lib/JavaRuntimeClasspathProvider.html",
        "skylark/lib/JavaSkylarkApiProvider.html",
        "skylark/lib/JavaToolchainSkylarkApiProvider.html",
        "skylark/lib/Label.html",
        "skylark/lib/MakeVariables.html",
        "skylark/lib/ObjcProvider.html",
        "skylark/lib/PlatformInfo.html",
        "skylark/lib/ProtoSourcesProvider.html",
        "skylark/lib/Provider.html",
        "skylark/lib/Target.html",
        "skylark/lib/ToolchainInfo.html",
        "skylark/lib/XcTestAppProvider.html",
        "skylark/lib/android_common.html",
        "skylark/lib/apple.html",
        "skylark/lib/apple_bitcode_mode.html",
        "skylark/lib/apple_common.html",
        "skylark/lib/apple_toolchain.html",
        "skylark/lib/attr.html",
        "skylark/lib/attr_definition.html",
        "skylark/lib/attr_defintion.html",
        "skylark/lib/bool.html",
        "skylark/lib/cmd_helper.html",
        "skylark/lib/config_common.html",
        "skylark/lib/configuration.html",
        "skylark/lib/cpp.html",
        "skylark/lib/ctx.html",
        "skylark/lib/depset.html",
        "skylark/lib/dict.html",
        "skylark/lib/exec_result.html",
        "skylark/lib/file_provider.html",
        "skylark/lib/fragments.html",
        "skylark/lib/globals.html",
        "skylark/lib/int.html",
        "skylark/lib/java.html",
        "skylark/lib/java_annotation_processing.html",
        "skylark/lib/java_common.html",
        "skylark/lib/java_compilation_info.html",
        "skylark/lib/java_output.html",
        "skylark/lib/java_output_jars.html",
        "skylark/lib/java_proto_common.html",
        "skylark/lib/jvm.html",
        "skylark/lib/list.html",
        "skylark/lib/native.html",
        "skylark/lib/objc.html",
        "skylark/lib/path.html",
        "skylark/lib/platform.html",
        "skylark/lib/platform_type.html",
        "skylark/lib/proto.html",
        "skylark/lib/provider.html",
        "skylark/lib/repository_ctx.html",
        "skylark/lib/repository_os.html",
        "skylark/lib/root.html",
        "skylark/lib/rule_attributes.html",
        "skylark/lib/runfiles.html",
        "skylark/lib/set.html",
        "skylark/lib/skylark-builtin.html",
        "skylark/lib/skylark-configuration-fragment.html",
        "skylark/lib/skylark-overview.html",
        "skylark/lib/skylark-provider.html",
        "skylark/lib/string.html",
        "skylark/lib/struct.html",
        "skylark/lib/swift.html",
        "skylark/lib/testing.html",
        "skylark/lib/tuple.html",

        # Tutorial
        "tutorial/android-app.html",
        "tutorial/app.html",
        "tutorial/backend-server.html",
        "tutorial/cpp.html",
        "tutorial/environment.html",
        "tutorial/index.html",
        "tutorial/ios-app.html",
        "tutorial/java.html",
        "tutorial/review.html",
        "tutorial/workspace.html",
    ],
    blog = [
        "2015/03/27/Hello-World.html",
        "2015/04/06/Simplified-Workspace-Creation.html",
        "2015/04/10/bash-completion.html",
        "2015/04/15/share-your-project.html",
        "2015/04/22/thank-you-stickers.html",
        "2015/06/17/visualize-your-build.html",
        "2015/06/25/ErrorProne.html",
        "2015/07/01/Configuration-File.html",
        "2015/07/08/Java-Configuration.html",
        "2015/07/23/tree-trimming.html",
        "2015/07/28/docker_build.html",
        "2015/07/29/dashboard-dogfood.html",
        "2015/09/01/beta-release.html",
        "2015/09/11/sandboxing.html",
        "2015/12/10/java-workers.html",
        "2016/01/27/continuous-integration.html",
        "2016/02/23/0.2.0-release.html",
        "2016/03/18/sandbox-easier-debug.html",
        "2016/03/31/autoconfiguration.html",
        "2016/06/10/0.3.0-release.html",
        "2016/06/10/ide-support.html",
        "2016/10/07/bazel-windows.html",
        "2016/10/20/intellij-support.html",
        "2016/11/02/0.4.0-release.html",
        "2016/11/04/bazel-build.html",
        "2017/02/22/repository-invalidation.html",
        "2017/02/27/protocol-buffers.html",
        "2017/02/28/google-summer-of-code.html",
        "2017/03/07/java-sandwich.html",
        "2017/03/21/design-of-skylark.html",
        "2017/04/21/JDK7-deprecation.html",
        "2017/05/26/Bazel-0-5-0-release.html",
        "2017/05/31/google-summer-of-code-2017.html",
    ],
    other = {
        "versions/master/docs/windows-chocolatey-maintenance.html": "https://www.bazel.build/windows-chocolatey-maintenance.html",
        "roadmaps/index.html": "/roadmap.html",
    })
