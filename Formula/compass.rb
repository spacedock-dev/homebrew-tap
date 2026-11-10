class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.9.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_darwin_arm64.tar.gz"
      sha256 "ce7ba8d3322d9c763c64513390e0ecbe8894dd7a487a6ca4e6c26f8fbb01fa3d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_darwin_amd64.tar.gz"
      sha256 "3d3a1483a021dbee4f3e2c8597ee2000530259f8561158eb2ad683ce0d03bc92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_linux_arm64.tar.gz"
      sha256 "c0d91d0f68cf653af09a57bcdeabf5293ee497d8738aa53eda5916c49f9c63f1"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_linux_amd64.tar.gz"
      sha256 "c8591ec1761a76d587d22a4d19cb1a5f0e304a9b80a3dd33ed3aa798616c067f"
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
