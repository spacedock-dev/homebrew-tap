class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.0-beta.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.3/subspace_0.16.0-beta.3_darwin_arm64.tar.gz"
      sha256 "84a5bb20a949d7b95542af5eb873a936f58b04dfeb4e31f1acc01fccdd69839e"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.3/subspace_0.16.0-beta.3_darwin_amd64.tar.gz"
      sha256 "17058abdbdd314eba8528523c947c6ffeeb586ecf2173e2c3b5eaa3c33406689"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.3/subspace_0.16.0-beta.3_linux_arm64.tar.gz"
      sha256 "71eee7e61da651a3a2a7ac7bd40b8342260ab00c40513a09acf38710a4742af3"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.3/subspace_0.16.0-beta.3_linux_amd64.tar.gz"
      sha256 "6f004f7a4033623540a43f6f6e188a9916cf68bb402284cb6a1b33cd1bbf5b80"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.0-beta.3", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.0-beta.3", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.0-beta.3", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.0-beta.3", shell_output("#{bin}/rr --version").strip
  end
end
