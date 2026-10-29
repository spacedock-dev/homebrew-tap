class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.4.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_darwin_arm64.tar.gz"
      sha256 "b73f91dfe4b60ce89a7071448556997ef4d5ef274ecd29ba3643bbab91e66ccd"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_darwin_amd64.tar.gz"
      sha256 "acebb69a2c7ffc6a14a4899e467f0a48f6777aff738d5f346c5e79dc2e5157ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_linux_arm64.tar.gz"
      sha256 "d53fd4db5ffd56e3b2259c0ffbd80be139df687b9eea8e315a6426b09a55e239"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.0/compass_2.4.0_linux_amd64.tar.gz"
      sha256 "3d1ca6cbe12f166d882181da82dc25af359dbe6be5309ba9b1cc30903bbf3f30"
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
