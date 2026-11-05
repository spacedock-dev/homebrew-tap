class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "2.7.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_darwin_arm64.tar.gz"
      sha256 "376af1fd522a3c274ac30490135e5d42552b36e1cbe202a02995f421e4b38793"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_darwin_amd64.tar.gz"
      sha256 "d889693290a0750478773641f6fdc6b805de61d284ffc9a7303f05c3fd2e7bf3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_linux_arm64.tar.gz"
      sha256 "2f1367788e64138e84fd5ddfb2dd2b0a17e63f6c72040f3bce7e335abc7f81e2"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v2.7.0/compass_2.7.0_linux_amd64.tar.gz"
      sha256 "e5932a618400096892ccdbf4c507219d62788f08321d0d022150db07039ac6ab"
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
