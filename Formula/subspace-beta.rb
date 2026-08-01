class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.11.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.2/subspace_0.11.2_darwin_arm64.tar.gz"
      sha256 "038b4e735208c38f172d8870c2e6cf9ef81ba114b6325efe251f6d62a7bbe7cc"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.2/subspace_0.11.2_darwin_amd64.tar.gz"
      sha256 "2d2a8438e07cc365a56f58a89545a30b16d512257ed0c92ef834bb9a5267d09c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.2/subspace_0.11.2_linux_arm64.tar.gz"
      sha256 "8a1248a1999dd8bdbcd27cf0201941d97d619f67046810495cce2838e7575db8"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.2/subspace_0.11.2_linux_amd64.tar.gz"
      sha256 "0e8086cdfebcb65378fbbb0a8c37749a24532b9159ca85c26748d62daadc4e56"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.11.2", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.11.2", shell_output("#{bin}/sr --version").strip
  end
end
