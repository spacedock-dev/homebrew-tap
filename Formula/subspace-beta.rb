class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.0-beta.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.2/subspace_0.16.0-beta.2_darwin_arm64.tar.gz"
      sha256 "88956577a7046ce5f051b0566455cbc586b42c36fc09fbb4322df081f09d8a21"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.2/subspace_0.16.0-beta.2_darwin_amd64.tar.gz"
      sha256 "a245ddca7cc1b54506d5f94755b4286c25702fd1b5c707bad3fcb12b9f0b0c3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.2/subspace_0.16.0-beta.2_linux_arm64.tar.gz"
      sha256 "f17464b05d635964a7e7ca05fb77c65e0e95c0435ff57705b775633f890859b0"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.2/subspace_0.16.0-beta.2_linux_amd64.tar.gz"
      sha256 "4f84f0d7b1d468f68b0adfd5b3674409112703e62e839b3ad801c11a4b226727"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.0-beta.2", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.0-beta.2", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.0-beta.2", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.0-beta.2", shell_output("#{bin}/rr --version").strip
  end
end
