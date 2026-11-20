class Devq < Formula
  desc "Serialise access to shared Android devices between AI agents"
  homepage "https://github.com/mikepenz/agent-device-orchestrator"
  version "0.2.1"
  license "Apache-2.0"

  base = "https://github.com/mikepenz/agent-device-orchestrator/releases/download/v#{version}/devq-#{version}"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin.tar.gz"
      sha256 "365fb1d554fc51c848b4689f88407b0e32a05b747b6b7bc6d7dad4b295362083"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin.tar.gz"
      sha256 "bd5b29c8b0e0c4efd47900a18147dbb70643934dc99f253c96c29beab579680d"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "09358e6793a2c8f382c1f849a8950eb7c5485a5e8fe7b349e9738c5b6a78791f"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5beda6a61d75b0698526fc98ec2c73d7951a958439cb91137b34308a3765a328"
    end
  end

  def install
    bin.install "devq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devq --version")
  end
end
