class ComposeBuddy < Formula
    desc "CLI for rendering and inspecting Jetpack Compose @Preview composables"
    homepage "https://github.com/mikepenz/compose-buddy/"
    url "https://github.com/mikepenz/compose-buddy/releases/download/v0.3.0-a04/compose-buddy-cli-v0.3.0-a04.zip"
    sha256 "7888b6b2a8d90032de5bece5a110156bdf837e3e68b80e8e8332f57a373d119a"
    version "v0.3.0-a04"
    license "Apache-2.0"
    depends_on "openjdk"
    def install
        bin.install "compose-buddy"
    end
    test do
        system "#{bin}/compose-buddy", "--help"
    end
end
