class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.12.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.0/subspace_0.12.0_darwin_arm64.tar.gz"
      sha256 "5751d81345b7fa8b355a5afa1088c50a0434a6faed8f0a8b134c0dced0e6adce"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.0/subspace_0.12.0_darwin_amd64.tar.gz"
      sha256 "0bf2411df4096ffaad31d218bd9160d04fff62a7514d575d0b15bc76b04efc9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.0/subspace_0.12.0_linux_arm64.tar.gz"
      sha256 "3ea5c2e56e40299721dc99119c81efaaeb7c3f801480644218285f7b13a94d61"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.0/subspace_0.12.0_linux_amd64.tar.gz"
      sha256 "8c28c0aaeed458af00a0f01af94955546682640833419b7fca6010ab9771fc08"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.12.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.12.0", shell_output("#{bin}/sr --version").strip
  end
end
