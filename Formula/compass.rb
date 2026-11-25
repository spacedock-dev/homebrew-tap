class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "3.1.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.1.0/compass_3.1.0_darwin_arm64.tar.gz"
      sha256 "f562d4d264e0d25fc4131f726b088f0c6667186ac9d5254d10537f01cf51b45d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.1.0/compass_3.1.0_darwin_amd64.tar.gz"
      sha256 "7c602b0ac9387975c741e30a1fa2f485edd6ffaa33430833b9d07fdb3fc9d305"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.1.0/compass_3.1.0_linux_arm64.tar.gz"
      sha256 "52933fb3bc0c7e73264e48794ea8d9dccdd5c49149b693ea2c3a12da71ab4c99"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.1.0/compass_3.1.0_linux_amd64.tar.gz"
      sha256 "4c82c1b80d0cb9f62b0a16c7d8a28b0aab089c565156820b7755df235038b10a"
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
