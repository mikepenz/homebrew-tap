class ComposeBuddy < Formula
    desc "CLI for rendering and inspecting Jetpack Compose @Preview composables"
    homepage "https://github.com/mikepenz/compose-buddy/"
    url "https://github.com/mikepenz/compose-buddy/releases/download/${VERSION}/compose-buddy-cli-${VERSION}.zip"
    sha256 "${SHA}"
    version "${VERSION}"
    license "Apache-2.0"
    depends_on "openjdk"
    def install
        bin.install "compose-buddy"
    end
    test do
        system "#{bin}/compose-buddy", "--help"
    end
end
