class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.13.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_darwin_arm64.tar.gz"
      sha256 "204813f8386a2be4bc7a3a67fbbd13cf27bf39bd3db8cb8e19af22da753b7041"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_darwin_amd64.tar.gz"
      sha256 "efd706e3f179ea94c0b12b138d6d4c40e10310940015c8e334d109c2683b4304"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_linux_arm64.tar.gz"
      sha256 "bddb203a0fd38a5840824b15c59450de18d797eae374f5bf965621c1a3f089d1"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.13.0/compass_2.13.0_linux_amd64.tar.gz"
      sha256 "906a0c0da5adf82b4e93b0a2f37c36c130e964e76af713f108d9aad3716e1440"
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
