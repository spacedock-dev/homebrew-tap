class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.14.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.0/subspace_0.14.0_darwin_arm64.tar.gz"
      sha256 "549a6752966eae2fee12f4a30ce2c746c290e5a1dbfd4ef5f4c0dde4fbbf5b12"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.0/subspace_0.14.0_darwin_amd64.tar.gz"
      sha256 "9fd5753733382fca29b5ca88d3078ea9222a0d0f70d1d583711d9a1d576012da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.0/subspace_0.14.0_linux_arm64.tar.gz"
      sha256 "0f70af55020621cefe04b02a29702b816d02db4977c859c18e9fc807e4fa2818"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.14.0/subspace_0.14.0_linux_amd64.tar.gz"
      sha256 "9ddad51a09565a1d875f64dae63bc706dbc56df492d306eebdf1cd1db1953e1e"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.14.0", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.14.0", shell_output("#{bin}/sr --version").strip
  end
end
