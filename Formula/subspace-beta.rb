class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.0/subspace_0.13.0_darwin_arm64.tar.gz"
      sha256 "4efafc957a6c862a4d9b17ada23257f0bc1b4dd026c56cb5500062d6fb690ef0"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.0/subspace_0.13.0_darwin_amd64.tar.gz"
      sha256 "96d4b789af572b30bd3d6ef4732f99de9312cdb7c464eada60c4f130b1e84163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.0/subspace_0.13.0_linux_arm64.tar.gz"
      sha256 "762c1ebd9b4d41b33303e1f11e4d9f8551bbeb6ed9208115eee9a54268198200"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.13.0/subspace_0.13.0_linux_amd64.tar.gz"
      sha256 "1e43ef3d35668a5dae5db5e0d87ce4e3b43f3f9d993cda144c49710b84af6c19"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.13.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.13.0", shell_output("#{bin}/sr --version").strip
  end
end
