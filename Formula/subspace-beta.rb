class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.2/subspace_0.16.2_darwin_arm64.tar.gz"
      sha256 "1a98546de83fef51bad6d1f98e7018fd672dd93d6484afcf2de009a9417e4513"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.2/subspace_0.16.2_darwin_amd64.tar.gz"
      sha256 "eee55cd6423afe61931a51c6fbb2f10c8af3577ce0f1bc6618342a5a3877d355"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.2/subspace_0.16.2_linux_arm64.tar.gz"
      sha256 "61653d4f7e25c6324a4d9bacfb22a720d8cb5c19f17732123f52938010fd59de"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.2/subspace_0.16.2_linux_amd64.tar.gz"
      sha256 "421c86ce5be4f9dc4f439838aaf0f492536e5d6c659a139173807f92cb010728"
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
    assert_equal "0.16.2", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.2", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.2", shell_output("#{bin}/spacedock-review --version").strip
    assert_equal "0.16.2", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.2", shell_output("#{bin}/rr --version").strip
  end
end
