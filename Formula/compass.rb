class Compass < Formula
  desc "Agnostic agent cartography and visualization tool"
  homepage "https://github.com/spacedock-dev/compass"
  version "3.0.0"
  license all_of: ["Apache-2.0", "OFL-1.1"]

  on_macos do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.0/compass_3.0.0_darwin_arm64.tar.gz"
      sha256 "a0311c8bc91a1c40dfaca574f6032c5148bae2e7e6a6aa9610b8456cc243d233"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.0/compass_3.0.0_darwin_amd64.tar.gz"
      sha256 "45d87b20201c72f9901f16c65555af314d583f4f6ffb95a065b502069418d343"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.0/compass_3.0.0_linux_arm64.tar.gz"
      sha256 "d668c4c9807a798be736da6c1dd219f8376caea1d54832aad6e3cf63a1c0a40c"
    end
    on_intel do
      url "https://github.com/spacedock-dev/compass/releases/download/v3.0.0/compass_3.0.0_linux_amd64.tar.gz"
      sha256 "0fbfba86f42f39bfea2b91fd69f6dac2c187573e9d3f54d59cd14ad600112506"
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
