class SubspaceBeta < Formula
  desc "Native Subspace Review v1 TUI"
  homepage "https://github.com/spacedock-dev/subspace"
  version "0.16.0-beta.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.5/subspace_0.16.0-beta.5_darwin_arm64.tar.gz"
      sha256 "8ec436abc4e5f564ea6146350effbf9b8529e23a193d764b487bf7c022c5f9f8"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.5/subspace_0.16.0-beta.5_darwin_amd64.tar.gz"
      sha256 "4aa1f261e280ae3dcc9e23057ddb05799b222ca232bf12198590201935485bd9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.5/subspace_0.16.0-beta.5_linux_arm64.tar.gz"
      sha256 "1257b59ca422ee339d5555658c73fdc1f93d8b9550880b9233e1675de1de4a61"
    end
    on_intel do
      url "https://github.com/spacedock-dev/subspace/releases/download/v0.16.0-beta.5/subspace_0.16.0-beta.5_linux_amd64.tar.gz"
      sha256 "91e97a554018aa54a6a660b6f3b86ca1c8882f36998dda0815b3366481fbf1fc"
    end
  end

  def install
    bin.install "subspace-tui"
    bin.install_symlink bin/"subspace-tui" => "sr"
    bin.install "subspace-relay-client"
    bin.install_symlink bin/"subspace-relay-client" => "rr"
  end

  test do
    assert_equal "0.16.0-beta.5", shell_output("#{bin}/subspace-tui --version").strip
    assert_equal "0.16.0-beta.5", shell_output("#{bin}/sr --version").strip
    assert_equal "0.16.0-beta.5", shell_output("#{bin}/subspace-relay-client --version").strip
    assert_equal "0.16.0-beta.5", shell_output("#{bin}/rr --version").strip
  end
end
