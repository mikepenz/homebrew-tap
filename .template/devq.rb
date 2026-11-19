class Devq < Formula
  desc "Serialise access to shared Android devices between AI agents"
  homepage "https://github.com/mikepenz/agent-device-orchestrator"
  version "${VERSION}"
  license "Apache-2.0"

  base = "https://github.com/mikepenz/agent-device-orchestrator/releases/download/v#{version}/devq-#{version}"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin.tar.gz"
      sha256 "${SHA_AARCH64_DARWIN}"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin.tar.gz"
      sha256 "${SHA_X86_64_DARWIN}"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "${SHA_AARCH64_LINUX}"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "${SHA_X86_64_LINUX}"
    end
  end

  def install
    bin.install "devq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devq --version")
  end
end
