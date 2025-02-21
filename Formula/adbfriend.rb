class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.3.4/adbfriend-cli-shadow-1.3.4.zip"
    sha256 "013685ccef7fdf88292b02506745bcd8546666e9514d29e684f18b85697f77b3"
    version "1.3.4"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end