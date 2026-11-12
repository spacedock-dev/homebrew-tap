class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.13.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_darwin_arm64.tar.gz"
      sha256 "ac6912682a689768bc07b57ffc66fb4378ef772a72a0822d6a66a778aaf2ac8d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_darwin_amd64.tar.gz"
      sha256 "377f94671c28ed351bb23113118b02aa1eb6dd57354d5258beee18ce8f453098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_linux_arm64.tar.gz"
      sha256 "a614ca7c171bfacbc4318cfe8659ed5bcfd8cfc3f3220a9a0f878b090abc5250"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_linux_amd64.tar.gz"
      sha256 "ffdbe528bba92a2cabc839cf033db9b33b275ba15f6a1fd2af71425f6441d892"
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
