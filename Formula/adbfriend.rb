class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.4.1/adbfriend-cli-shadow-1.4.1.zip"
    sha256 "854e27b375f12c6c9a5ab439d53e4e418d2f3088f1972fe35b75626d2d0f11db"
    version "1.4.1"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end