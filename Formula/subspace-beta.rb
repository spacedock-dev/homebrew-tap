class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.11.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.1/subspace_0.11.1_darwin_arm64.tar.gz"
      sha256 "4808d4841726f82bff98ebc391418c69176d3a026902d2b1537301f6b0016eaa"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.1/subspace_0.11.1_darwin_amd64.tar.gz"
      sha256 "e9ce13da59d7777b5cc506a5782441ea320aaa1c98160445c5af25f46f5ac0ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.1/subspace_0.11.1_linux_arm64.tar.gz"
      sha256 "3e7de67b4fc0fa381b01bca6a4d8ca7f6ee265c9cddaf02aa2f7f77123e3c88b"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.1/subspace_0.11.1_linux_amd64.tar.gz"
      sha256 "19e3a84c7ce1effd0a07a9428f401d88a88c60bd437915b84b6bcff72a4a2505"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.11.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.11.1", shell_output("#{bin}/sr --version").strip
  end
end
