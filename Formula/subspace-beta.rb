class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace-beta"
  version "0.8.0-beta.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.4/subspace_0.8.0-beta.4_darwin_arm64.tar.gz"
      sha256 "3bb1fe46a7ab99d43d1e4d3a83b10b4f75328bf9d1c816ccb497f0fa68a3f35f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.4/subspace_0.8.0-beta.4_darwin_amd64.tar.gz"
      sha256 "8be0f399d3f5595abe660ebfa0b0ee08aa7430f5c7a42adaf091882b75db986f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.4/subspace_0.8.0-beta.4_linux_arm64.tar.gz"
      sha256 "1552c66375db915988db23afb15f0de36d86e19b49f907ff75151147e2306117"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace-beta/releases/download/v0.8.0-beta.4/subspace_0.8.0-beta.4_linux_amd64.tar.gz"
      sha256 "f44975b478f91e7522238a9bb91a11a9fade517cfe315da039451660868df118"
    end
  end

  def install
    bin.install "subspace-tui"
  end

  test do
    assert_equal "0.8.0-beta.4", shell_output("#{bin}/subspace-tui --version").strip
  end
end
