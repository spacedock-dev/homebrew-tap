class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.6"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.6/subspace_0.10.0-beta.6_darwin_arm64.tar.gz"
      sha256 "0da988b6d02b3e202224651bd11d3487689079d62c5a5b8013d315294d1d338f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.6/subspace_0.10.0-beta.6_darwin_amd64.tar.gz"
      sha256 "c02846138e5eceba2c3ce848ced1ede4c4746e40d44554d79eb08a3f6f445f46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.6/subspace_0.10.0-beta.6_linux_arm64.tar.gz"
      sha256 "0cc04bd4c29f1bd699febf74ba984a653f8bca377026b969dbde019c34cbf824"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.6/subspace_0.10.0-beta.6_linux_amd64.tar.gz"
      sha256 "424837d7667a021b3987f43adf855bcc4ca2daac5b314e22e9cce4425dcf2461"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.6", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.6", shell_output("#{bin}/sr --version").strip
  end
end
