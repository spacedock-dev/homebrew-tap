class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.10"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.10/subspace_0.10.0-beta.10_darwin_arm64.tar.gz"
      sha256 "922a95f1897a0c078bb265974e7ee2d17157ff3035218fe09f466dab3adaa48b"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.10/subspace_0.10.0-beta.10_darwin_amd64.tar.gz"
      sha256 "ddd0ef04ff3996627cfab9d14aefde98b1553bc5eb440bc4397536e8eb99cbd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.10/subspace_0.10.0-beta.10_linux_arm64.tar.gz"
      sha256 "5a9e30a2496335f29494621262e689851967cc2b29b2209548207c7e3245f484"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.10/subspace_0.10.0-beta.10_linux_amd64.tar.gz"
      sha256 "14e9c9d8faca37ea46b281d9404c2ecbb3e95f8de68410c4c842c36ec144022f"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.10", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.10", shell_output("#{bin}/sr --version").strip
  end
end
