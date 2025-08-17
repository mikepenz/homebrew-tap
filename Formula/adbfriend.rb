class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.0.0-a03/adbfriend-cli-shadow-2.0.0-a03.zip"
    sha256 "972fe5c7cff49fbf092271d95c8fb7bb8c2c4b342d299be74466889b1ed310a0"
    version "2.0.0-a03"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end