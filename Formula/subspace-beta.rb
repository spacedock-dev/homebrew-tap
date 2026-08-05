class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.12.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.1/subspace_0.12.1_darwin_arm64.tar.gz"
      sha256 "7807f18651871ad686e7bbe5ad77f40b111f98dddd892da59ba9b76b7bda7cd4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.1/subspace_0.12.1_darwin_amd64.tar.gz"
      sha256 "157842f434667b7900fb93b10592edf85cc60feb80bf523b0fce071c3b8252de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.1/subspace_0.12.1_linux_arm64.tar.gz"
      sha256 "1f7cdf74803826dac6379bdc579856047674fe5290063ba98e20586884432bf3"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.12.1/subspace_0.12.1_linux_amd64.tar.gz"
      sha256 "89fd6d073454dd231844acd5dcfcf4d15176f58a1087ecc4be6568c879888b69"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.12.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.12.1", shell_output("#{bin}/sr --version").strip
  end
end
