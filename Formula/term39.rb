class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.11.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.3/term39-0.11.3-macos-64bit-arm-binary.tar.gz"
      sha256 "ac818477fa9ed1f505e97da33e76489ce48b4f9830bdf27642bd2ed00fc6dda7"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.3/term39-0.11.3-macos-64bit-x86-binary.tar.gz"
      sha256 "84b5d7a983f5013bfdcf9c5b9aebebed38d677d55c409962531d18e983f34c88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.3/term39-0.11.3-linux-64bit-arm-binary.tar.gz"
      sha256 "9110409c4fe5b2af677ce70997bfcaa1dba3063e927bed3e0f5a58b5b8c46a3c"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.3/term39-0.11.3-linux-64bit-x86-binary.tar.gz"
      sha256 "090de0b27cf06e4a436ea6e15a86afeb786d5ce671fb16908b82c2cb4940c6bb"
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
