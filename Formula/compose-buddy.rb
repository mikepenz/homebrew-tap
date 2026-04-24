class ComposeBuddy < Formula
    desc "CLI for rendering and inspecting Jetpack Compose @Preview composables"
    homepage "https://github.com/mikepenz/compose-buddy/"
    url "https://github.com/mikepenz/compose-buddy/releases/download/v0.3.0/compose-buddy-cli-v0.3.0.zip"
    sha256 "b2af510c440e9d79af61fac3892ece2dc47f597e6c6c41f0fbf766c72e2e9cd6"
    version "v0.3.0"
    license "Apache-2.0"
    depends_on "openjdk"
    def install
        bin.install "compose-buddy"
    end
    test do
        system "#{bin}/compose-buddy", "--help"
    end
end
