class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.6.0/term39-1.6.0-macos-64bit-arm-binary.tar.gz"
      sha256 "84d5f61281aefdc3db0b233d56689978a509ce132e3692c6aa15a352b4910ba8"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.6.0/term39-1.6.0-macos-64bit-x86-binary.tar.gz"
      sha256 "9c9f84ab3275d5b155836e3114cc4d4818b3f2c672d5c82701971f893a71a232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.6.0/term39-1.6.0-linux-64bit-arm-binary.tar.gz"
      sha256 "0daec396992902c7b43a12a021a7814e1dd36fc5874c36da0ddc76c313f3ddb1"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.6.0/term39-1.6.0-linux-64bit-x86-binary.tar.gz"
      sha256 "944bf4b0f25dd49309d00b8e5564f7246a3339c6d7d1e21cc13b8d4f0d050457"
    end
  end

  def install
    # Adjust if tarball contains a subfolder
    bin.install "term39"
  end

  test do
    assert_match "term39", shell_output("\#{bin}/term39 --version")
  end
end
