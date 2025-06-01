class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.7.0/adbfriend-cli-shadow-1.7.0.zip"
    sha256 "93241778caaa67ca40f98bdee63fe620fcc926c51b1ea7271421fb24f08cc976"
    version "1.7.0"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end