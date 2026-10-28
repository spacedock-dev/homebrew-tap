class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.3.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_darwin_arm64.tar.gz"
      sha256 "53b89122cd5fd0967fe6573e4c38c46bd0e27ca4e3fd175da0e3e93e949f9e87"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_darwin_amd64.tar.gz"
      sha256 "25521f1c8efe5271e62ec4b5d402ddcf18d19f48b7a67bb938f3f60bdd95fac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_linux_arm64.tar.gz"
      sha256 "2c472d697412b55541e30d8de8cf119c118b905ea0ad351584a0adb12740b7fc"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.3.0/compass_2.3.0_linux_amd64.tar.gz"
      sha256 "ecb7847edd54ec6a9a2f27903c69afb61af50803928047f4e067abb947a78f66"
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
