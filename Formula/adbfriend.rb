class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.0.0-a02/adbfriend-cli-shadow-2.0.0-a02.zip"
    sha256 "538b00d4dedcc293db8a59081fae065bdb983b45ee204c4b953ad6d6fe59fca3"
    version "2.0.0-a02"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end