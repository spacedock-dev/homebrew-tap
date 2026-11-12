class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.11.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_darwin_arm64.tar.gz"
      sha256 "e51250ad0d1cce9e164e3d28d32587149605ca5f54a3082d00f05cddc858722f"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_darwin_amd64.tar.gz"
      sha256 "5cfd565c5740e5c967b0e4fb5bc34af935382e01a5775793725c376a4f1aef67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_linux_arm64.tar.gz"
      sha256 "03481f85d2cf7d67c35a04ac29dc604af37ac0bf6a5b8e6f79f24ac409738d6c"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.11.0/compass_2.11.0_linux_amd64.tar.gz"
      sha256 "8bb3aa80aaafeeafc36f91199e1e9fe3fc61b666581dcc9013064b25d6e54c04"
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
