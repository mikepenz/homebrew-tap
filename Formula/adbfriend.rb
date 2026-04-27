class Adbfriend < Formula
    desc "Android ADB CLI tool with common actions used during development"
    homepage "https://github.com/mikepenz/adbfriend/"
    url "https://github.com/mikepenz/adbfriend/releases/download/2.0.0/adbfriend-cli-shadow-2.0.0.zip"
    sha256 "f6929468ce6dcbb1037d4846fa88243c248df6009d0ddf8ea1c27fb5f9b95cee"
    version "2.0.0"
    license "Apache-2.0"
    def install
        rm_f Dir["bin/*.bat"]
        libexec.install %w[bin lib]
        (bin/"adbfriend").write_env_script libexec/"bin/adbfriend-cli", Language::Java.overridable_java_home_env
    end
end