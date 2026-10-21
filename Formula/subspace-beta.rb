class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.1/subspace_0.16.1_darwin_arm64.tar.gz"
      sha256 "359b2d1c7090b58bb7e3c553f79cc74c99d5c07f17228e371719d66cc6869688"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.1/subspace_0.16.1_darwin_amd64.tar.gz"
      sha256 "2eb2fcce07fd243602f9cd01c262173559144fbbe1b819827474bd9e50423779"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.1/subspace_0.16.1_linux_arm64.tar.gz"
      sha256 "0f411f382f517fd7a9fea27033517b897d724fa8fb2e51791b0879a028cd9eb4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.1/subspace_0.16.1_linux_amd64.tar.gz"
      sha256 "aeaa0db459d0b608d8a5ffa3366d5f187457bbf01153be1d4d1c5105805a0ace"
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
    assert_equal "0.16.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.1", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.1", shell_output("#{bin}/spacedock-review --version").strip
    assert_equal "0.16.1", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.1", shell_output("#{bin}/rr --version").strip
  end
end
