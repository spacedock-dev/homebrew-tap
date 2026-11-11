class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.9.1"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_darwin_arm64.tar.gz"
      sha256 "04b462124b952e0104d632d647f754df92eb0a8b24008b6a3ef0dd635633692a"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_darwin_amd64.tar.gz"
      sha256 "0ee2844aa393fc2a1bad6cb75d5b25c8220123ff6f0588208f774d1ce4333326"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_linux_arm64.tar.gz"
      sha256 "4807fa84265dc6dfa0eb382816960ea1fb2687354778147bd0ab9368e32e9706"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.9.1/compass_2.9.1_linux_amd64.tar.gz"
      sha256 "ce1626bccba9620dad68eeb6cddba09cd5c8bf6dd57759d9da90ac0512148c32"
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
