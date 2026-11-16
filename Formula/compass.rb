class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.14.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_darwin_arm64.tar.gz"
      sha256 "05bdde3d0edce507dfd62130d8c67dfabb27ee9c1a77e9b59ffbc4b9ed091e38"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_darwin_amd64.tar.gz"
      sha256 "d49b6bdec5b2f25aaeac1bd35e93b8ee4de4fe1062dea6747b048db82d30cea0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_linux_arm64.tar.gz"
      sha256 "b2ea21bc6101f3b615205f3af25171b75587a915ede83ce43264c9354d0ed0ce"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_linux_amd64.tar.gz"
      sha256 "92eb871a274f3cc9c8acc988f332f21e1c94a8e1956b1926e6dfb18c2afea729"
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
