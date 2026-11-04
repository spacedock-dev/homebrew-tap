class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.6.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_darwin_arm64.tar.gz"
      sha256 "a256acda37f77b7a18eb1e11377c3d7e7e10609ce3bd58bd0a083d823cadf8b5"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_darwin_amd64.tar.gz"
      sha256 "d301abccc46d1fb8c040a0996ed481dc790013e53959502bfc4d4c79fea0977e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_linux_arm64.tar.gz"
      sha256 "10393712ab6ea7983415553c71c515d9eed5086687ae2e78cbdfc570f034748e"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.6.0/compass_2.6.0_linux_amd64.tar.gz"
      sha256 "85f64928ef901544787ae631fbb71d6954fe76fa27381bfbcfb2465c34f9b06f"
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
