class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.0.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_darwin_arm64.tar.gz"
      sha256 "b82cd3099996e1dc984da90a9705324c160ec146809d84af06297574fc8630b2"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_darwin_amd64.tar.gz"
      sha256 "cabf4ce46b548a2eef9f02fa763532bed95020c9c759d51dd138f2b3cac1ea2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_linux_arm64.tar.gz"
      sha256 "0202399dab62ff65216b1251aa296ac19f17dd7316219718a53b4df521d21cbf"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_linux_amd64.tar.gz"
      sha256 "c77e9ff0cde483c382cb850b184cf9f6a3d0bc3b30df98182ed1c3682bb4b715"
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
