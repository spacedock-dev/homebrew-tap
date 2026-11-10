class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.9.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_darwin_arm64.tar.gz"
      sha256 "e94708971e9cb2ce74d6c569cb24e94907b774930290b4adf0c9505e766ced0f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_darwin_amd64.tar.gz"
      sha256 "93eaf4b73c80c7f3e60778793f2605f4e8e00f2dcf3a6ffb58e347f05317fa8f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_linux_arm64.tar.gz"
      sha256 "0a6efff2a2cbf5621329b36caa707d78b96f6240177a1bc9d659048bf92018a8"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.0/compass_2.9.0_linux_amd64.tar.gz"
      sha256 "b0f1d22a76ebc9f1641450767574eb4a5e64282238f62d44e930b77ea145ce81"
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
