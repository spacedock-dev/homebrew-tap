class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.11.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_darwin_arm64.tar.gz"
      sha256 "9d487d9b3688b840ec2da7cc8a28a70ecf40c245bdf8bb86553bafbe783bb944"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_darwin_amd64.tar.gz"
      sha256 "123196826e68ce04967b5b7356064ad878df5451bcfaeb5baff03922763b7efc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_linux_arm64.tar.gz"
      sha256 "1084be05cc05f973eaae3704e081d1f4cafb44bdd08855e15a67b728ad25bb3a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_linux_amd64.tar.gz"
      sha256 "d28ab5fa738c93ce24df726341911546ba8e0b4ec66e6b99f949183d7050dd4b"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"compass" => "compass"
    bin.install_symlink libexec/"compass" => "spacedock-compass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compass --version")
  end
end
