class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.8.1/adbfriend-cli-shadow-1.8.1.zip"
    sha256 "bb278f4b28bd9b7f5d36a159b65ac8c4ca7ca1df26cab7be4e37c8c42202a5e4"
    version "1.8.1"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end