class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.1.1/adbfriend-cli-shadow-2.1.1.zip"
    sha256 "b4b8cbaac60d5582ef544e5cb683f4bc60841b335b115d1103463da51bc58d53"
    version "2.1.1"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend-cli", Language::Java.overridable_java_home_env
    end
end