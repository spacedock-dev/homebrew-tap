class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.4.1"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_darwin_arm64.tar.gz"
      sha256 "4b55ecad9707ecf2baa73e2f9275b571a49c6c4b848e66f97947d678a3988f6a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_darwin_amd64.tar.gz"
      sha256 "7c7c7a8b8578632a3d818ebc54fdf943fcac1d824d7fc20540ad501d86e0c6bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_linux_arm64.tar.gz"
      sha256 "fc74be8f6170408d7d3e185fafb9ebedc20a7213dd4af183edf6d99459b6063f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.4.1/compass_2.4.1_linux_amd64.tar.gz"
      sha256 "3fb48f214594df4986ee9d700f8a32faffc13b316e5c07bebee5ad07162cce42"
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
