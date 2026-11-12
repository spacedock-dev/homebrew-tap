class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.12.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_darwin_arm64.tar.gz"
      sha256 "ca87943e722fac1fcdc9278a8a0387a77e06fef912cdf967e8d51404471dd7ed"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_darwin_amd64.tar.gz"
      sha256 "7dcffb09edf14d27d46f91972601d7ae86767c4b17443be18d4cbf223c54168d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_linux_arm64.tar.gz"
      sha256 "1455c0055bd164fa74ec7ddbadfcbae84be9c1d5acd6be0104f9ad5fbce48468"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.12.0/compass_2.12.0_linux_amd64.tar.gz"
      sha256 "cf85d2357d99172331d377c090c68eac193b5c2f78ace779d6fb40e04feaba3f"
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
