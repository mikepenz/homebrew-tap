class Devq < Formula
  desc "Serialise access to shared Android devices between AI agents"
  homepage "https://github.com/mikepenz/agent-device-orchestrator"
  version "0.2.0"
  license "Apache-2.0"

  base = "https://github.com/mikepenz/agent-device-orchestrator/releases/download/v#{version}/devq-#{version}"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin.tar.gz"
      sha256 "86eeb5da9d045594612816a4fd97c1d048f2ecff128dd008b0194fb10455e6f6"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin.tar.gz"
      sha256 "901c289be571100899684ac3d5e7b615a65b0b2697f415c38dce8bd76b3b69e9"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c13a7f94a43dd62601aead8c43613a5a0601d30e4d7350c5ddcaa6d284f41839"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca47d30d481dbe7ec4a94a06e8899585f9a31486c87343fb034ca379059b40af"
    end
  end

  def install
    bin.install "devq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devq --version")
  end
end
