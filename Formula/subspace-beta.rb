class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.14.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.1/subspace_0.14.1_darwin_arm64.tar.gz"
      sha256 "26d1141a7afc51b622406a217814e05d4df2c81c1a0bafcb58764f8fe522d77c"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.1/subspace_0.14.1_darwin_amd64.tar.gz"
      sha256 "dff642d2d47c1873493ab23b8ab19392fb743805c3039f923f4b1c2759dc94e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.1/subspace_0.14.1_linux_arm64.tar.gz"
      sha256 "a5cb6665af2694128804a940289997b846cf9d885d2625dc342dc84bc8c8390b"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.1/subspace_0.14.1_linux_amd64.tar.gz"
      sha256 "e86f123530e70d3b70a036218e34b58d838c7673ccdf574ce9fdb24f045cb62c"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.14.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.14.1", shell_output("#{bin}/sr --version").strip
  end
end
