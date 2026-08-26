class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.0/subspace_0.15.0_darwin_arm64.tar.gz"
      sha256 "ca6f62b42ef4fd3ced2787ee02bdf2cea2c92099bffde1386384ef14f1215443"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.0/subspace_0.15.0_darwin_amd64.tar.gz"
      sha256 "55d9604dfc9b066ad522e9d9aa12b9043abf063c6de16c74376c8bce830aa757"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.0/subspace_0.15.0_linux_arm64.tar.gz"
      sha256 "f871df130a4be6b930974d2dcfc49ee40cd3589df5f82e8e9071dafc1ea44ae1"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.0/subspace_0.15.0_linux_amd64.tar.gz"
      sha256 "558c638a633278bbbe2ad624fb9948b415266820eb07c6c84b09e45b5a3c786a"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.15.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.15.0", shell_output("#{bin}/sr --version").strip
  end
end
