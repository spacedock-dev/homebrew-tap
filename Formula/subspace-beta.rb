class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.1/subspace_0.10.0-beta.1_darwin_arm64.tar.gz"
      sha256 "1c5c0859d5f9a953a223fae326e0428177bdaaf85076b4f217d167d13ab8f8e0"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.1/subspace_0.10.0-beta.1_darwin_amd64.tar.gz"
      sha256 "c189eb29adf441d06d317072c5309c13fb86700403e7aaa2232d96612394becc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.1/subspace_0.10.0-beta.1_linux_arm64.tar.gz"
      sha256 "8c934f2db6ef69c1a0d1238f0712265223f083981432412661d1377497fb7772"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.1/subspace_0.10.0-beta.1_linux_amd64.tar.gz"
      sha256 "f82a3f8b8cf5175f41a97e23e07b7e5297791681ef27dea8264805cd87ba2fc1"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.1", shell_output("#{bin}/sr --version").strip
  end
end
