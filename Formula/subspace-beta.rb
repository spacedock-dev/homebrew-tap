class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.4/subspace_0.10.0-beta.4_darwin_arm64.tar.gz"
      sha256 "2c8f2ba51db976fbbc8344b6f68d3d54aef29d611c587e828b4b9f415afff364"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.4/subspace_0.10.0-beta.4_darwin_amd64.tar.gz"
      sha256 "58931442dede636eca14394df87f7e8b82b269b837ea9ae80b5c59932838d5f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.4/subspace_0.10.0-beta.4_linux_arm64.tar.gz"
      sha256 "de94847e126a619013f29e84a757daef53722917b4851aa515e95f95059438ea"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.4/subspace_0.10.0-beta.4_linux_amd64.tar.gz"
      sha256 "b73251881d4be77469410f326ffd2aab7afb2571ebe9e15bb4cdeb9f63b9b684"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.4", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.4", shell_output("#{bin}/sr --version").strip
  end
end
