class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.11.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.4/subspace_0.11.4_darwin_arm64.tar.gz"
      sha256 "26f62436da78748bf2836a4e5fbef885688137cd8ac9d57c62540be1e11a87e7"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.4/subspace_0.11.4_darwin_amd64.tar.gz"
      sha256 "e20a91d6e500c987e58a85e4a0a25b6a55779bec4637a15eeb5fada43217cfcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.4/subspace_0.11.4_linux_arm64.tar.gz"
      sha256 "bfef3835af1820890e2e2949533d1244d1fc52fb43265f4316bab364ff469ea7"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.11.4/subspace_0.11.4_linux_amd64.tar.gz"
      sha256 "602199ac7d1c6a30ca982c9533dec28a42fd151e67da75a8950a8945a14fc6c4"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.11.4", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.11.4", shell_output("#{bin}/sr --version").strip
  end
end
