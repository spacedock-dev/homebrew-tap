class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.0-beta.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.4/subspace_0.16.0-beta.4_darwin_arm64.tar.gz"
      sha256 "2c1616da2f277d70c3b861d3d56432e0eff466ef2645d38a47585a203b98b1a9"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.4/subspace_0.16.0-beta.4_darwin_amd64.tar.gz"
      sha256 "5f1b4b4c5775acedb0d4a28dc6a825f4b2634a9ef63eedbc1b9b43416a4c4206"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.4/subspace_0.16.0-beta.4_linux_arm64.tar.gz"
      sha256 "5d2e96368020799f0cf1bc6d494116d117f95742992d60a9d941a43f4630f84f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.4/subspace_0.16.0-beta.4_linux_amd64.tar.gz"
      sha256 "ad55bfe2ee332afe8a6bc5f0f4f9008af1337499d62f8472d863f8785e30b17b"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.0-beta.4", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.0-beta.4", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.0-beta.4", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.0-beta.4", shell_output("#{bin}/rr --version").strip
  end
end
