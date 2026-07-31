class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.9"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.9/subspace_0.10.0-beta.9_darwin_arm64.tar.gz"
      sha256 "fbff078f1c9b84c32c166cd6cd3431b3ce9e05b534a4ef54d7971a582a156c14"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.9/subspace_0.10.0-beta.9_darwin_amd64.tar.gz"
      sha256 "13b73f684a22dfa49d49a94de13a83f36eae3fea54ac933f64ceb206cc157635"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.9/subspace_0.10.0-beta.9_linux_arm64.tar.gz"
      sha256 "2a3f5d2603f1b3196865f319e87454b664c518de4ffab84bd69a55ecbb1f4559"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.9/subspace_0.10.0-beta.9_linux_amd64.tar.gz"
      sha256 "a167423fc00de2f01839c54f4dc29b22b4c1d7dbf1602d9f0c3f03a3289ce57b"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.9", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.9", shell_output("#{bin}/sr --version").strip
  end
end
