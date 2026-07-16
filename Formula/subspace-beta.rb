class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.8.0-beta.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.3/subspace_0.8.0-beta.3_darwin_arm64.tar.gz"
      sha256 "3a2ab93474fbcd5010f0c9c69c91dea603edccaa905e06311cd73040fbbee170"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.3/subspace_0.8.0-beta.3_darwin_amd64.tar.gz"
      sha256 "fdefb7ee45df5379aa6731fbbb75adc6d0fe407b4f0c4dc28a81802faba2c429"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.3/subspace_0.8.0-beta.3_linux_arm64.tar.gz"
      sha256 "32c3f3e76ed91780a716b9768ceef71d6a9f73aa58ab89fa75ad8753967a748f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.3/subspace_0.8.0-beta.3_linux_amd64.tar.gz"
      sha256 "a99bfd62d4c26be260c2f32b50f80f4f3b3086ce5e9dfa464871265e67f9115b"
    end
  end

  def install
    bin.install "subspace-tui"
  end

  test do
    assert_equal "0.8.0-beta.3", shell_output("#{bin}/subspace-tui --version").strip
  end
end
