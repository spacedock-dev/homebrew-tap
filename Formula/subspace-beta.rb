class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.5/subspace_0.10.0-beta.5_darwin_arm64.tar.gz"
      sha256 "a4d0dc5beb48c242b5266e2ff070ac0c05e8be7421f7954304c41f015abe27e2"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.5/subspace_0.10.0-beta.5_darwin_amd64.tar.gz"
      sha256 "14ceb73aec96634ead403e0d244854c0d8dbb22f409494e2756c1265ade03b60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.5/subspace_0.10.0-beta.5_linux_arm64.tar.gz"
      sha256 "6af36f092c4d54c65015901a18d7d365a5234ab162f16e57a233e35c3bba7e3a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.5/subspace_0.10.0-beta.5_linux_amd64.tar.gz"
      sha256 "37b6ea0e068f2670a7eb406088ec8f3ab2d71a679a76f4f951b64f91f38ba145"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.5", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.5", shell_output("#{bin}/sr --version").strip
  end
end
