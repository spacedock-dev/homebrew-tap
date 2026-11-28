class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "3.3.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.0/compass_3.3.0_darwin_arm64.tar.gz"
      sha256 "419e9a5b4a537a90ff0527313217778a404c5a53dc8725131b4b7ee65e14106b"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.0/compass_3.3.0_darwin_amd64.tar.gz"
      sha256 "a2d0b4e7cb78d9954649dc6e86c78aa06aad1366cb3a7c933f3a9240f2f2616d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.0/compass_3.3.0_linux_arm64.tar.gz"
      sha256 "2282fbf2bbbc1504d5c336d4a46f3abf78d5cbfec6001f0301419bc2483a0cad"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.3.0/compass_3.3.0_linux_amd64.tar.gz"
      sha256 "a75928268202f5871eb954899b46e1cca0bae28a029b4959acc41ed6eb58bcbf"
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
