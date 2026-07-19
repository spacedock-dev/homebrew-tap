class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.9.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.9.0/subspace_0.9.0_darwin_arm64.tar.gz"
      sha256 "6b5314a0124144c01e67ee85d2f06c852199a1c06f16fa45f43783b35d4fc14d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.9.0/subspace_0.9.0_darwin_amd64.tar.gz"
      sha256 "9a080704320bd1d57ed0de9920505c80ded3c6cc36918e4d2e2888ea32e6a482"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.9.0/subspace_0.9.0_linux_arm64.tar.gz"
      sha256 "e7f99038e82d7908596035bee6f73250427ef703370e54d449cbc2bf41d9068c"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.9.0/subspace_0.9.0_linux_amd64.tar.gz"
      sha256 "f206bd1b8d50aac2b302ae91c35ba9683a3b5a914ffa289ceb8b0dfbac22d74a"
    end
  end

  def install
    bin.install "subspace-tui"
  end

  test do
    assert_equal "0.9.0", shell_output("#{bin}/subspace-tui --version").strip
  end
end
