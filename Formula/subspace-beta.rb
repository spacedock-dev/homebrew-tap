class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.2/subspace_0.10.0-beta.2_darwin_arm64.tar.gz"
      sha256 "6cafc3e7ce8028f1f2681e9aa87fd648012126b4cd46e8b9d01b22b7be40fca4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.2/subspace_0.10.0-beta.2_darwin_amd64.tar.gz"
      sha256 "f856de0cfd3772920e6e389b3263e5fea3154e223054e562a72b3395af26cf59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.2/subspace_0.10.0-beta.2_linux_arm64.tar.gz"
      sha256 "2ecc69820630d59265ae49a89982f4c3a1728ea1636898d2d9cb6f444b861ca5"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.2/subspace_0.10.0-beta.2_linux_amd64.tar.gz"
      sha256 "ce3f6cf1480f2f1e1e74b58a568baea32f1abeb8a593cbda5073b16f4ca28e0d"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.2", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.2", shell_output("#{bin}/sr --version").strip
  end
end
