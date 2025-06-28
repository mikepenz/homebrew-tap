class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.8.1/adbfriend-cli-shadow-1.8.1.zip"
    sha256 "dcdddcfbe5542b99cb19f33a7dc9fa36a7fb311114af58f3c9ae2b571ea04e7b"
    version "1.8.1"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end