class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.9.1"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_darwin_arm64.tar.gz"
      sha256 "059198a60dedf00069778c8500660431220b5550db573b26088e2949413a0006"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_darwin_amd64.tar.gz"
      sha256 "d841dedfeb63b2c0efb05ff966b8bf34a41b33ac065a9778096c91b548693d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_linux_arm64.tar.gz"
      sha256 "7a0295e7053c33ec9c6a07ce04c8ff548ea3b565c1b2b48f59cb79e75a98dcec"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_linux_amd64.tar.gz"
      sha256 "37d4e235309222f5efd4f6086e49fd8e205b313e13f73f9fa8d42a662bf5ccf8"
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
