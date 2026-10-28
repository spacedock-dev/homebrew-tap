class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.3.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_darwin_arm64.tar.gz"
      sha256 "3edc7ea3c1477fe4394109d88f4deeb9b0219609b685c71fa41cec532fb5d21f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_darwin_amd64.tar.gz"
      sha256 "946beebb9b0e550bf300aed72c2b9995f735e35191aee5820ed0f1b2964526a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_linux_arm64.tar.gz"
      sha256 "be26b53749b6b4892266bcf909dfe98304a333e4ef70cc2cf65a0d8f4d53165d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_linux_amd64.tar.gz"
      sha256 "767087712c69224c954d449c724863f06312caf74397d05e17f966f8237f8bef"
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
