class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.2.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_darwin_arm64.tar.gz"
      sha256 "0b27bf85cd64b8fee1ecbb30cf1a639d7711424b5e3ea20eeb41fc73dd6d6ebd"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_darwin_amd64.tar.gz"
      sha256 "dab7db7ac676056c826103c95ed42a269e1ae254dab99b5a94f39d3e9088c76e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_linux_arm64.tar.gz"
      sha256 "2694c399dca21e9c06fa8817c90e16cbc990ab572cf83126a6f2bbe2d31cfd22"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.2.0/compass_2.2.0_linux_amd64.tar.gz"
      sha256 "b520b4629acae1ab6d9592a235c81dd89803e8acbc3f2197f59ee2caaabf330d"
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
