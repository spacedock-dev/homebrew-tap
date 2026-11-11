class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.10.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_darwin_arm64.tar.gz"
      sha256 "051d44881bd7b23e0fcbee2edb368030be78a437e0d47ad707ef28cb49f0319d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_darwin_amd64.tar.gz"
      sha256 "34babb8f735334af548f5a220228d297ab99017ba9d02f45a520033945454eae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_linux_arm64.tar.gz"
      sha256 "15cae85a049746f968aa53cf25b6acc50db7cec85eaa195f77b05b5d675c696f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.10.0/compass_2.10.0_linux_amd64.tar.gz"
      sha256 "702d31a49cd3855b643cddae7c7cb5ac714079be358c6426c6ef452529a6c5c8"
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
