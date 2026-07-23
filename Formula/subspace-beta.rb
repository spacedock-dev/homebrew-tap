class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.3/subspace_0.10.0-beta.3_darwin_arm64.tar.gz"
      sha256 "51a23918891c191dd61a63193a1c0f7ba1ae1050d9db4f97e1f12bfa42d0d6d5"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.3/subspace_0.10.0-beta.3_darwin_amd64.tar.gz"
      sha256 "e51d177b25f0bf2bfdaede7874405be96fa524e24566a612dbf95197625d5782"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.3/subspace_0.10.0-beta.3_linux_arm64.tar.gz"
      sha256 "4b15cb52b2e0229aa1f05b48db7f6fe4420057e4388f1af237e2c5036d6deb71"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.3/subspace_0.10.0-beta.3_linux_amd64.tar.gz"
      sha256 "14c7cc1183a98f6a00846783b75e90ed91842000a95e54afa1e8a3474b598ef0"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.3", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.3", shell_output("#{bin}/sr --version").strip
  end
end
