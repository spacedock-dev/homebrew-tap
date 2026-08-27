class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.15.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.1/subspace_0.15.1_darwin_arm64.tar.gz"
      sha256 "9a13fec64ef82fe17007ef9be2295f3b7bbd18a240acce30c2cdb4d242c856d4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.1/subspace_0.15.1_darwin_amd64.tar.gz"
      sha256 "f62f592e17bfd184b5afe09b1a8de4a53b89767d389b7f39258043a006cb78bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.1/subspace_0.15.1_linux_arm64.tar.gz"
      sha256 "05588b65a49f34de2cdfce447e80ffaaf8bb1e1765e9fb4ff80114441d52c930"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.15.1/subspace_0.15.1_linux_amd64.tar.gz"
      sha256 "b7756c1866b89d5257f333c6a2d8b9967e68ea4208852355ea8d5bec72d42947"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.15.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.15.1", shell_output("#{bin}/sr --version").strip
  end
end
