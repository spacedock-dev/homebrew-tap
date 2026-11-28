class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "3.3.1"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.1/compass_3.3.1_darwin_arm64.tar.gz"
      sha256 "f8ce2014f729d93c0114a9ff22e998236c22364058ed6c66272a9751dd796942"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.1/compass_3.3.1_darwin_amd64.tar.gz"
      sha256 "b3b96b884535cb4aa7596b7064c2bc418c1b5a9e0cfaf9155101a79985bad8f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.1/compass_3.3.1_linux_arm64.tar.gz"
      sha256 "faa8bd590b3d057a716a266317dcfd66888a1d9b4bbd9493cf8bdfeab73382b2"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.1/compass_3.3.1_linux_amd64.tar.gz"
      sha256 "126349a56d3314f641012dd0a23d53bd6d4b3c8f863a5bde12a0d0d615d2112f"
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
