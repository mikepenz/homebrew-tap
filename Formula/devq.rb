class Devq < Formula
  desc "Serialise access to shared Android devices between AI agents"
  homepage "https://github.com/mikepenz/agent-device-orchestrator"
  version "0.1.1"
  license "Apache-2.0"

  base = "https://github.com/mikepenz/agent-device-orchestrator/releases/download/v#{version}/devq-#{version}"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin.tar.gz"
      sha256 "015fa82bca2cb1e9de5958acac626a249315c93a30a28b57720f38fbf19f3f31"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin.tar.gz"
      sha256 "0c651cbae2251b9671c9a94bf3f8f413b8695a1fc2e1cb6635316513b8f90bde"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5a54d1229ba6124c38c186622491f5741de4fe3289009ff5b67dae7b9d626eb"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "671f5a6f504f4d7c1b67093a7ad71db43204ab52030dad30aded261dec54057b"
    end
  end

  def install
    bin.install "devq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devq --version")
  end
end
