class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.6.0/adbfriend-cli-shadow-1.6.0.zip"
    sha256 "fbe08359fe4241bd4de9dec5ab3d43ba0374972de7b81341607a54d50d65aa92"
    version "1.6.0"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end