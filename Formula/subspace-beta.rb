class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.7"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.7/subspace_0.10.0-beta.7_darwin_arm64.tar.gz"
      sha256 "f655f2c9586905e4a61acfe7691b31e5956263757472580c24bb994c9c174a87"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.7/subspace_0.10.0-beta.7_darwin_amd64.tar.gz"
      sha256 "d3f5a62ae53440baa1b53da82553b48a3aa49b7acf676a136da553b058396e42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.7/subspace_0.10.0-beta.7_linux_arm64.tar.gz"
      sha256 "02b786746f1bbf237c618192c628230aac1ae9b00942c0f56c7bd96696ce489e"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.7/subspace_0.10.0-beta.7_linux_amd64.tar.gz"
      sha256 "0002f10b28be13103bb83233d9a141a4bc5683cde9c50fd6cb55d7b105ad538d"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.7", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.7", shell_output("#{bin}/sr --version").strip
  end
end
