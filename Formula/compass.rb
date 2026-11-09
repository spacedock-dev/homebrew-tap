class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.8.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_darwin_arm64.tar.gz"
      sha256 "8c480e040ec411f6a6723a6fa12ee5684a90dd872534f72939c8bed4564d6fa3"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_darwin_amd64.tar.gz"
      sha256 "dc3e6583fe5e3a575afeb794b51ae2237fcdaf5c5c7630c8eb04c6f734bffe60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_linux_arm64.tar.gz"
      sha256 "aa37f116d75538a91853975fd0a14fee0f546cdfa473bdc114ff7ce8ff276ad4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_linux_amd64.tar.gz"
      sha256 "a1242f4925553ac05d1e7a216f271cdb5ada027ab95e8196adb1af8e33288843"
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
