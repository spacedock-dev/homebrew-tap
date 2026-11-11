class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.10.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_darwin_arm64.tar.gz"
      sha256 "6863830ffe2044ab171474dd94958464dd60a21e0384c0ed51b7c5952ed21d90"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_darwin_amd64.tar.gz"
      sha256 "4134efe05907867dc65b335552cd057a7da7ce5ff31922d2673f6976163efe58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_linux_arm64.tar.gz"
      sha256 "73cbff7b2e102ad975f445cab06027682659e5c0384fcc6074f29e572dd65c8e"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_linux_amd64.tar.gz"
      sha256 "766c0e3ad5af18653c40c52f72970832d02bcf0468721e4b6578aa1dd62fc00a"
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
