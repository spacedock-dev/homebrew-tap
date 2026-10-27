class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.0.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_darwin_arm64.tar.gz"
      sha256 "75180629ae3cc5a34490b96c885d108295db0d53e91beb83050ffd40dd78359a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_darwin_amd64.tar.gz"
      sha256 "1b54d2ffcc6eab8cb8801c0a718614d48987ed2718cd18d73c809e0af28bc525"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_linux_arm64.tar.gz"
      sha256 "897df8317b20f09b708eb1c73df8bcde7b0df06343b3a2944c527c91ab308bf6"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.0.0/compass_2.0.0_linux_amd64.tar.gz"
      sha256 "1526a23730137174a7e28eb6b41010f26b0c5e389b3252c600145e57124587d6"
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
