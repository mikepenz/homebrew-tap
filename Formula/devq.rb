class Devq < Formula
  desc "Serialise access to shared Android devices between AI agents"
  homepage "https://github.com/mikepenz/agent-device-orchestrator"
  version "0.1.2"
  license "Apache-2.0"

  base = "https://github.com/mikepenz/agent-device-orchestrator/releases/download/v#{version}/devq-#{version}"
  on_macos do
    on_arm do
      url "#{base}-aarch64-apple-darwin.tar.gz"
      sha256 "902bd4ab36ecfa8eb2ec133dc1b553d1dc5f252420669e6000a1706b670adc13"
    end
    on_intel do
      url "#{base}-x86_64-apple-darwin.tar.gz"
      sha256 "e8634b06c6ae3deb6010537bdbf8cc93e241d890f0a51fcd4cf3d6f23c806668"
    end
  end
  on_linux do
    on_arm do
      url "#{base}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15c91c9c688b21f3ddefa9980dc8f19c86bd9b271cb298f497963a69393dd65d"
    end
    on_intel do
      url "#{base}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "176374b053700874bbe99667909b9bc274ec876654ac2667cafcbf722fe612ca"
    end
  end

  def install
    bin.install "devq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devq --version")
  end
end
