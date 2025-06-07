class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.7.1/adbfriend-cli-shadow-1.7.1.zip"
    sha256 "93fa5abe26f042497ee73e4cdd928ab6cc7b0d7d8ee60de4e960be869817da37"
    version "1.7.1"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end