class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.11.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.11.0/subspace_0.11.0_darwin_arm64.tar.gz"
      sha256 "e92d38fd5cf13087227d1c42b6114a9131c80ac63863bcbc981c6e8f59eca773"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.11.0/subspace_0.11.0_darwin_amd64.tar.gz"
      sha256 "9d08f6263e251b3d080c1cc198ec2732bf2c6ea5e0c688ef224fed5514fa6bdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.11.0/subspace_0.11.0_linux_arm64.tar.gz"
      sha256 "f71333f03fac9bdfe3e2faaae5c387d790c3b5d4ad60205b634d73caa8a0ee87"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.11.0/subspace_0.11.0_linux_amd64.tar.gz"
      sha256 "9338c3be1be45d1cf2ecb03c1dc157df059ee5b128d8888b18cf28c8c5ada175"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.11.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.11.0", shell_output("#{bin}/sr --version").strip
  end
end
