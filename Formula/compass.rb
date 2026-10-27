class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.1.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_darwin_arm64.tar.gz"
      sha256 "de8a17bd07559fb273b348b1c2765425834945106ec36e649daa0e43fdf12ddc"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_darwin_amd64.tar.gz"
      sha256 "42aebbcf5dc876843a6a58ae9456e3d025d0e225f0ba7346a65e8a338a2ee90f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_linux_arm64.tar.gz"
      sha256 "12d2879d28863c30d1fecc00937d4ea9332d53facfce163d3dff65d61f8eaf42"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.1.0/compass_2.1.0_linux_amd64.tar.gz"
      sha256 "64dfb6cbd13720ddb6bcfb3ce1ea68ca91992c8600d0438ab4002daabb650dca"
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
