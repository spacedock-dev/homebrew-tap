class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.6.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_darwin_arm64.tar.gz"
      sha256 "0dd6fa991866018dedd68aa92443f122b30ff308e50b4674a5d0f713db4695e3"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_darwin_amd64.tar.gz"
      sha256 "3660744c995202294695af9ee89c4abca612007f06d28bfd6560e446e1e09602"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_linux_arm64.tar.gz"
      sha256 "14fec5ce42780c60d8e27149312024eaec3ceaf6614545877690611f2e7d89d6"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_linux_amd64.tar.gz"
      sha256 "107113cd4185f0436e43d5de36aa1a7286de2cb1db5145f8b05f924a13bd24d0"
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
