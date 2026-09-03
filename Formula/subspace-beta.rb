class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.15.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.2/subspace_0.15.2_darwin_arm64.tar.gz"
      sha256 "c66de88275a04812835c60b02f349678cd5128fe0a2a89f4c4dca2e7c9c6e276"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.2/subspace_0.15.2_darwin_amd64.tar.gz"
      sha256 "bd143b757d5d88e04fc9699827f21f2ff5c3f202e532716ee405da5cb4d780f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.2/subspace_0.15.2_linux_arm64.tar.gz"
      sha256 "d66aafd1b132f4002b1844beef16efbe3f253bb2f2fafe873305d6cd23ceed72"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.2/subspace_0.15.2_linux_amd64.tar.gz"
      sha256 "186cc9172d04e2d2d5a6a9783c1fe72b67ed1135853547e34a56ded2a3c9cdb3"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.15.2", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.15.2", shell_output("#{bin}/sr --version").strip
  end
end
