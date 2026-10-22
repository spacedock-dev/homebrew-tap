class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "1.4.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v1.4.0/compass_1.4.0_darwin_arm64.tar.gz"
      sha256 "7fd5df08bafbfffb3bfe6c693dac85b5cbe6b25fae9b4e96390469cd97997934"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v1.4.0/compass_1.4.0_darwin_amd64.tar.gz"
      sha256 "af4b6271dffa4d8c4b08461faf0b3fa23c958d91172dee16ce1be2c8d4895f91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v1.4.0/compass_1.4.0_linux_arm64.tar.gz"
      sha256 "16192d6165e62f70b2bbdf856788b2873ee2a4cbcf6b69dad32d190cbb27bb98"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v1.4.0/compass_1.4.0_linux_amd64.tar.gz"
      sha256 "32d0c8c65f1908989ab42408aa7bd85b9c8344fe002f2ca0f526b0bd98fd5d4d"
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
