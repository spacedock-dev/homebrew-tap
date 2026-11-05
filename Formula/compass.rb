class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.7.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_darwin_arm64.tar.gz"
      sha256 "2bbaf906726bcdef3a0ba481c7a905d9207792d495a9bfb74a467808bfd6606b"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_darwin_amd64.tar.gz"
      sha256 "4cca139617de4f8774567ed4013626ca3c284d8b85bfab9d833df0fff04cb970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_linux_arm64.tar.gz"
      sha256 "95c3d3ff18ff9873167574e92f36c494ad7b8aae84ee6f5cd99304ea6fd6d49c"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_linux_amd64.tar.gz"
      sha256 "a44b1ad2a1549ead6f2b2ce8ebcc6e8a46127c8d6ade2a7286e3ef8b9f597301"
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
