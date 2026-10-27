class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.1.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_darwin_arm64.tar.gz"
      sha256 "641d57e058cd222c8188945494b63bbe2fe3c2d3c72a51e5d41cb7efe1d49f52"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_darwin_amd64.tar.gz"
      sha256 "b2a5c1959ec4bff83f342b362c77b689b6e66c1d5edcca4cfe1bbffea58efb33"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_linux_arm64.tar.gz"
      sha256 "a1d5a6e9a994691259f8d24fc4327d3ca55b489fa50bc68b4b8c453f3dbee996"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_linux_amd64.tar.gz"
      sha256 "981be0b3acb16f6dc40162757b571966fd16547c43eed1f638c76a64d1b9787d"
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
