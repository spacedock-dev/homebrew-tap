class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.4.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_darwin_arm64.tar.gz"
      sha256 "a2140cb9f6ad6b2e1549a4996ba6a53865010784ee8a0818fc133c64cacd5ca9"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_darwin_amd64.tar.gz"
      sha256 "198bd439e7b5d249c0c0b70b4310afb79091fde2559ccd94a5410ae997e59c81"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_linux_arm64.tar.gz"
      sha256 "c9c75ddae89292b5f2d1efe14205045ab06643808d0f83d46a93b6c9fd1229c1"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_linux_amd64.tar.gz"
      sha256 "13bdf4213734e932cb225c940bb74008a579925d5004134bec928e1eb5c268ac"
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
