class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.1.0/adbfriend-cli-shadow-2.1.0.zip"
    sha256 "fc3453a9093b4de20046af586a245dd3d0c2dbea121789134f1e730d094ab5b5"
    version "2.1.0"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend-cli", Language::Java.overridable_java_home_env
    end
end