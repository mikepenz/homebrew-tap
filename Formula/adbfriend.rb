class AdbFriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/1.3.3/adbfriend-cli-shadow-1.3.3.zip"
    sha256 "aeac8a9676f82115252306ab309e57949a6c1b996dce853c71b6f6a03d6f81de"
    version "1.3.3"
    license "Apache-2.0"

    depends_on "openjdk@17"

    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend", Language::Java.overridable_java_home_env
    end
end