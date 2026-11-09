class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.8.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_darwin_arm64.tar.gz"
      sha256 "d8231a9ff6a89893228b1c136dc25293664f61bf68d5bd52437d8cf443c61bef"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_darwin_amd64.tar.gz"
      sha256 "e3f718cb1753ba6c03b25254b8bdcc9a6f77b5db9377d3d613d19ee30f841458"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_linux_arm64.tar.gz"
      sha256 "ea4f3ccdf44d3bfd6368ea760812e52eafbb27f444572958213481a068e02990"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.8.0/compass_2.8.0_linux_amd64.tar.gz"
      sha256 "617e8c92eea2809f500eea7aec6a16c3a2e2d3fa6bf12938886e2854c036a54e"
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
