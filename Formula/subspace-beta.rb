class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.11.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.3/subspace_0.11.3_darwin_arm64.tar.gz"
      sha256 "694535a584b29004c5a6d3351654330c7626d16e062e55fb8b5203e9989e06b6"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.3/subspace_0.11.3_darwin_amd64.tar.gz"
      sha256 "092783b0d6eb4efbbe46c27898d259d8f6a01d63f56f9536df67599ef5673865"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.3/subspace_0.11.3_linux_arm64.tar.gz"
      sha256 "5cacc4d0daa85e221a312485c94ce8ea55cee3f7fa718163b379dcb3beddf514"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.3/subspace_0.11.3_linux_amd64.tar.gz"
      sha256 "f08efb6e62b4cb3f3827f3b9011a00ee803f0bda6a1d4e9dd14125f34d0de8c6"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.11.3", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.11.3", shell_output("#{bin}/sr --version").strip
  end
end
