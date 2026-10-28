class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.2.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_darwin_arm64.tar.gz"
      sha256 "bfc8000b73bd1cb08cb72054e49052178b272cba7fe2f6ceb59410ebb7834158"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_darwin_amd64.tar.gz"
      sha256 "1c185925b706433408ad77e1bcbfcad9afe6fef62a466f466eb930d0a5f42ede"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_linux_arm64.tar.gz"
      sha256 "423fe50c66722e1f81c46d5f51a2e7013ca7b8ebc5a22cd3272c1b21c074911d"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_linux_amd64.tar.gz"
      sha256 "e99a02e6ec809d3275ce0a171c48c49fc74aff9603a352fd1d3d6344d91a9010"
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
