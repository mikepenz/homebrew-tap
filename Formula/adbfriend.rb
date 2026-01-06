class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.0.0-b02/adbfriend-cli-shadow-2.0.0-b02.zip"
    sha256 "cebde2319f9c1d51b89aa51589b8f49c965b364e9d4a8bfa7f9185117d12ad00"
    version "2.0.0-b02"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend-cli", Language::Java.overridable_java_home_env
    end
end