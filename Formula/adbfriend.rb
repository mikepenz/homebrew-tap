class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.0.0-b01/adbfriend-cli-shadow-2.0.0-b01.zip"
    sha256 "d68aa84e70cc84d3990dbb0d466f397d2f3676b7247314a8a0746ba776c32676"
    version "2.0.0-b01"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend-cli", Language::Java.overridable_java_home_env
    end
end