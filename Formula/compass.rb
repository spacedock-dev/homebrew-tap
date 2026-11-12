class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.12.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_darwin_arm64.tar.gz"
      sha256 "ddfe3357fa734ea1c3585d265834fadae63218d9a8f0eaa227b872b0718cf337"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_darwin_amd64.tar.gz"
      sha256 "9ca5276d5837535731d210c1e2f908db1f19074dc2583918ce8b89592d8cf64a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_linux_arm64.tar.gz"
      sha256 "75defcb2afe6d79b01a65e285af2a6905b10039cfec345c104a8881db67fb383"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_linux_amd64.tar.gz"
      sha256 "c91425c8f3fdc4bde721cc843c8ef59b0c682de0999da8d0993dd73ea3a62686"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"compass" => "compass"
    bin.install_symlink libexec/"compass" => "spacedock-compass"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/compass --version")
  end
end
