class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "3.2.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.2.0/compass_3.2.0_darwin_arm64.tar.gz"
      sha256 "38d089443fa97a881ff52a14221805e9ebe028e8d5bdefeb72cd20c1fe0505e6"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.2.0/compass_3.2.0_darwin_amd64.tar.gz"
      sha256 "616dd99a97ae7c823a75b9b884c587e0d5e40282ec3c865eba59800210033da4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.2.0/compass_3.2.0_linux_arm64.tar.gz"
      sha256 "73ad72a332a37b11fb2ea865fcd0579b4164c8431b0b40583928e86658562a18"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.2.0/compass_3.2.0_linux_amd64.tar.gz"
      sha256 "00e5b281c24a48b131cc286bfb1c2cefa35ef45cec36ca43de12e9f6fd6a2825"
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
