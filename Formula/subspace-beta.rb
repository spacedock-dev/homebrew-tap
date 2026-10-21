class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0/subspace_0.16.0_darwin_arm64.tar.gz"
      sha256 "9cab85193d886d79dce0ddcc050b66e081cd0f09f8a55ec41b44784f455b3b22"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0/subspace_0.16.0_darwin_amd64.tar.gz"
      sha256 "94d163f52cd6320893d42707eb9f5fce5cb828bdef9d10c984183d40ed0c0441"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0/subspace_0.16.0_linux_arm64.tar.gz"
      sha256 "0c57dfc8fd9b1c0ae2fc682168582c20225a8e5aba7bb3137ee15ef936025474"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0/subspace_0.16.0_linux_amd64.tar.gz"
      sha256 "73a6ba557a64ab44de948bd99b0b475a1efc9b131da066b7fd35e62037deedf4"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.0", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.0", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.0", shell_output("#{bin}/rr --version").strip
  end
end
