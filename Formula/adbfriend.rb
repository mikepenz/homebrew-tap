class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.3.5/adbfriend-cli-shadow-1.3.5.zip"
    sha256 "1402bfafdb69f17294fc20eaa518470b3aa359a564917a23c1f8c0cd25928989"
    version "1.3.5"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end