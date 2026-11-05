class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.17.0-beta.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0-beta.1/subspace_0.17.0-beta.1_darwin_arm64.tar.gz"
      sha256 "55ad4e436c5530d224963a21e047f06cbdf7f419d1e5342e5fbf0122b9a72609"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0-beta.1/subspace_0.17.0-beta.1_darwin_amd64.tar.gz"
      sha256 "8480c0a5ef1109382618287e808879039c7a0582bdb06bf8a0683e3f77d6b2b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0-beta.1/subspace_0.17.0-beta.1_linux_arm64.tar.gz"
      sha256 "47c8a866974705ac2563b3a4b7e109c881c9ef7c491f2c4e638c595dff0d2c1b"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.17.0-beta.1/subspace_0.17.0-beta.1_linux_amd64.tar.gz"
      sha256 "dc893a62a146ae6e30b8589cac0265031926cdde09dabe9604b05031a10ae068"
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
    assert_equal "0.17.0-beta.1", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.17.0-beta.1", shell_output("#{bin}/sr --version").strip
    assert_equal "0.17.0-beta.1", shell_output("#{bin}/spacedock-review --version").strip
    assert_equal "0.17.0-beta.1", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.17.0-beta.1", shell_output("#{bin}/rr --version").strip
  end
end
