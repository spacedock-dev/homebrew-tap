class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.0-beta.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.1/subspace_0.16.0-beta.1_darwin_arm64.tar.gz"
      sha256 "84b051996e12b5a9ddefd696c410460fe7581b4385253a5a19a03defad3a55ef"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.1/subspace_0.16.0-beta.1_darwin_amd64.tar.gz"
      sha256 "323b1699bb177bce4d3bb776bc51c661852dc35b56aa1fd29f8180bded62e5ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.1/subspace_0.16.0-beta.1_linux_arm64.tar.gz"
      sha256 "f0f352eefc588ad9dc29eb92c1e9bdaf1b5c1b448625d9a5ec25660a436f5bc0"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.1/subspace_0.16.0-beta.1_linux_amd64.tar.gz"
      sha256 "0a49e23177e61e6544a5af02d9dcd83799d4057e5a22d7f823e9960d4bde7297"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.0-beta.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.0-beta.1", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.0-beta.1", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.0-beta.1", shell_output("#{bin}/rr --version").strip
  end
end
