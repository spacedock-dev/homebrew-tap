class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "3.0.1"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.1/compass_3.0.1_darwin_arm64.tar.gz"
      sha256 "81ec138e75d9d888fb162af52986d4391f7fbcf560894ca3ce8056391c489dc4"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.1/compass_3.0.1_darwin_amd64.tar.gz"
      sha256 "a376542ebe9c9f60fd58e5b34880adae1a4673e1c50b909d6d245562d0b89235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.1/compass_3.0.1_linux_arm64.tar.gz"
      sha256 "d3eee21df782fe85f15805879c3517dd82d36f048df91db0179ad9e3a8eceb1e"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.1/compass_3.0.1_linux_amd64.tar.gz"
      sha256 "5bb0de4417c42055b31a8fc32b0143a0b305c7eb267ef1a29c99c67d6d91ce7b"
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
