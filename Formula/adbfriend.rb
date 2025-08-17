class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.0.0-a01/adbfriend-cli-shadow-2.0.0-a01.zip"
    sha256 "3d30905a75d3e6f63bbb12ef2f49681911402a6fc2ef68f3caa9be138658d1be"
    version "2.0.0-a01"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end