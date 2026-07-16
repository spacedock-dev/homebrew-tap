class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.8.0-beta.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.5/subspace_0.8.0-beta.5_darwin_arm64.tar.gz"
      sha256 "7a279572c290792d3461689d5d47d7c09a079db723c33c8e7fa2bbded1834179"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.5/subspace_0.8.0-beta.5_darwin_amd64.tar.gz"
      sha256 "bd9795a42ffc2a06c0a514c29fd1d0b5c78710fbce7246da083e81d58e9514ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.5/subspace_0.8.0-beta.5_linux_arm64.tar.gz"
      sha256 "fabf20016594850751471d2e565f79a42d181540f0919d37ade3b9afa370a9d0"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.5/subspace_0.8.0-beta.5_linux_amd64.tar.gz"
      sha256 "e12d3c207ced34fa262c9864d07f760b85323adf5d061be099ad3a7f2cef948d"
    end
  end

  def install
    bin.install "subspace-tui"
  end

  test do
    assert_equal "0.8.0-beta.5", shell_output("#{bin}/subspace-tui --version").strip
  end
end
