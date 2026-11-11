class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.17.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0/subspace_0.17.0_darwin_arm64.tar.gz"
      sha256 "934050bb057a4b6b428a59f0862ed9fe592b0352a30489c2978f51eda9d71bd4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0/subspace_0.17.0_darwin_amd64.tar.gz"
      sha256 "cbad28b5fb8226053db511d0b4a311ace7f014994e25bbb34b1e46d05dc17798"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0/subspace_0.17.0_linux_arm64.tar.gz"
      sha256 "0db5db9ff0064cde62d7a2013b80f26d1039bfe1343f2e3b6ee397c7c0067408"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0/subspace_0.17.0_linux_amd64.tar.gz"
      sha256 "46a9001c15bcfcd8c3d6723a3002df275e214bf74fbe8e100e3d91650441a897"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install_symlink bin/"subspace-tui" => "spacedock-review"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.17.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.17.0", shell_output("#{bin}/sr --version").strip
    assert_equal "0.17.0", shell_output("#{bin}/spacedock-review --version").strip
    assert_equal "0.17.0", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.17.0", shell_output("#{bin}/rr --version").strip
  end
end
