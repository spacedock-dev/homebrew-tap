class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.4/subspace_0.16.4_darwin_arm64.tar.gz"
      sha256 "6c7fe4d565113e32ed62ecfc02d6921aade1045cd5e1a0392e5d357c50d3ea0a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.4/subspace_0.16.4_darwin_amd64.tar.gz"
      sha256 "7ee19dc3678a5664624fe8c42d788a9ce8e33bb11c787759cb2d7896a4011803"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.4/subspace_0.16.4_linux_arm64.tar.gz"
      sha256 "eadf9dd47302ebe6a7f01926365298ca1ffc42c87aac2515783aeb59d14dd224"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.4/subspace_0.16.4_linux_amd64.tar.gz"
      sha256 "81da66c6cbcaf7073d43fd6a2e7c1c0d8b3d9fbf87f6a794952569042cdb6841"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install_symlink bin/"subspace-tui" => "spacedock-review"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.4", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.4", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.4", shell_output("#{bin}/spacedock-review --version").strip
    assert_equal "0.16.4", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.4", shell_output("#{bin}/rr --version").strip
  end
end
