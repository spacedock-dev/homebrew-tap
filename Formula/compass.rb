class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.5.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_darwin_arm64.tar.gz"
      sha256 "71a6434df65898f08a9f5ecada25bd5f7297c00e508f45c48b9028f6761289c5"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_darwin_amd64.tar.gz"
      sha256 "89bd338f9abd3de8c0b04517a2a80fb2cbb096cb2b32bdf52aa7418982afc115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_linux_arm64.tar.gz"
      sha256 "12acc3ff35109382f74b0ae8ec3654da3bda0b1a2e7f51e32ac9214c8e8f0672"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_linux_amd64.tar.gz"
      sha256 "e28e21e12451ca2b7709af0033da2f071bc05958bdf60c064be5d6a1fe67fe63"
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
