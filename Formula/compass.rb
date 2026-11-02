class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.5.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_darwin_arm64.tar.gz"
      sha256 "ae30b52e46519029de108c44c7ce27a5611d194fdf0e4f81acefdc584a95dfef"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_darwin_amd64.tar.gz"
      sha256 "110b524d34e628b1cf21e2df0148e6310d8dcecdc5e8f42622baffd825657954"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_linux_arm64.tar.gz"
      sha256 "c2ab3bcf6a2d091f4610a2bfc6935e7f27cce0f1eba9b6e9248bfccc3bb72e44"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.5.0/compass_2.5.0_linux_amd64.tar.gz"
      sha256 "3cbf43404617d68dbebdb2746ea0a4d98d4451f6d1d1416829d897482b545aaa"
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
