class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.16.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.4/term39-0.16.4-macos-64bit-arm-binary.tar.gz"
      sha256 "31bf93ecaad60cb62ce5c9796c7c98d479b5d85fec3f5b97eb5f0e86348a0047"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.4/term39-0.16.4-macos-64bit-x86-binary.tar.gz"
      sha256 "ceccc07bf61b0011f3aecc9e1c52791bb21ef7475f8a4fde2cb86726ffc37e13"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.4/term39-0.16.4-linux-64bit-arm-binary.tar.gz"
      sha256 "56ecce066768aa7897a5f5127bc385d9ec41f482b76e17cc068a268316c1fb46"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.4/term39-0.16.4-linux-64bit-x86-binary.tar.gz"
      sha256 "7f1fde70d2d142b16f7e289db4250a924b76145f89ba68095918e4c89af93a05"
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
