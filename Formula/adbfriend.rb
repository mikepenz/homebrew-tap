class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.4.0/adbfriend-cli-shadow-1.4.0.zip"
    sha256 "c34668820e6e4810497f4608fc4df06b36fa518678bc21f7ca7db0f94073be1b"
    version "1.4.0"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end