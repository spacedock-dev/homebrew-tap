class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.13.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.1/subspace_0.13.1_darwin_arm64.tar.gz"
      sha256 "c4c5652e9dfec2ebed6c8b2f2d2a6d0a03e08ae31f6a4766c690158f20135252"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.1/subspace_0.13.1_darwin_amd64.tar.gz"
      sha256 "fb357f55e5525bcf48ed310cd292f4ab36e16514e840d7bc33db95a94737852e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.1/subspace_0.13.1_linux_arm64.tar.gz"
      sha256 "713778e3f5dfc50331e7db8ef5d07bd2ad9990d0717fbaad6bb64cc3b67b7627"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.1/subspace_0.13.1_linux_amd64.tar.gz"
      sha256 "3cd09820a38bcf1346bf610dec900cff70217b2422b3214f9c20c2b09a6a5951"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.13.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.13.1", shell_output("#{bin}/sr --version").strip
  end
end
