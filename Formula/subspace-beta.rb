class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.10.0-beta.8"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.8/subspace_0.10.0-beta.8_darwin_arm64.tar.gz"
      sha256 "b20e23c37ef51619425157f3906bfc20261852941ba28be0911cc4726a3e2bea"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.8/subspace_0.10.0-beta.8_darwin_amd64.tar.gz"
      sha256 "cee57a44f39e6c7d07957986d69a571a554b4e0a8c978b3045f2e7e358b0c145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.8/subspace_0.10.0-beta.8_linux_arm64.tar.gz"
      sha256 "3f89c15eab9343f082ad820ab32a21d9802d26c6b9afce19fd39343065a45591"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.10.0-beta.8/subspace_0.10.0-beta.8_linux_amd64.tar.gz"
      sha256 "67bf7f715861f62bb7932ec870dedde6653dac27560ab8be8c5fb6e6d46d82cd"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
  end

  test do
    assert_equal "0.10.0-beta.8", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.10.0-beta.8", shell_output("#{bin}/sr --version").strip
  end
end
