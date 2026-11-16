class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.14.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_darwin_arm64.tar.gz"
      sha256 "f1db68d30cc0effbbe1ffbfe1acc6c9c1142dda76a782cbe3222e506de454259"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_darwin_amd64.tar.gz"
      sha256 "72aa0c85a287bdf8841c08e78a9ea4c25d7f4c47a664a68fbae2d9414aac447b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_linux_arm64.tar.gz"
      sha256 "f5e9ae34cece6f593aeae13c99229dce9cb359fa783279a1c956338251d7f716"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.14.0/compass_2.14.0_linux_amd64.tar.gz"
      sha256 "8f430b878b4ba29dfb103a7e00ef08b14802c81e516a750ef1dfe72333a08668"
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
