class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.4.1"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_darwin_arm64.tar.gz"
      sha256 "ae2f3530ef04d6f751434cac1fa3bee1455530e7622c5ecc309c5d27fdc78151"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_darwin_amd64.tar.gz"
      sha256 "96c142c20bd74c33c3a83862651d0092e31c92e4f2a8b914197208f28276c380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_linux_arm64.tar.gz"
      sha256 "8b6b18fcf351cb096e1cf64f8df94521b9428be3afb0856d42b59c0b96d5385a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_linux_amd64.tar.gz"
      sha256 "3408e5eb3598c8c3ad69b8a4d2d1b74fb3514144dd76ac4ad01792e79a34224e"
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
