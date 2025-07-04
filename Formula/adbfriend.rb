class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.8.2/adbfriend-cli-shadow-1.8.2.zip"
    sha256 "8f2b05d786ae47a91c99e27c3564b6f71c3bc0c95ef1acc7afc8a833b9320354"
    version "1.8.2"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end