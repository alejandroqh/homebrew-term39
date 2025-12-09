class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.19.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.1/term39-0.19.1-macos-64bit-arm-binary.tar.gz"
      sha256 "9e294f4304555895b5608790b314269c0ddce3a40919de2fed4cd2bb7b173bb5"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.1/term39-0.19.1-macos-64bit-x86-binary.tar.gz"
      sha256 "940406bce825a5f0c7670334947fa8cfd32d664dd4dea0f197d0c3b5ceea4de0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.1/term39-0.19.1-linux-64bit-arm-binary.tar.gz"
      sha256 "1387b425b34a6be7e5ea2345108a98e26220b41cb3f7801e0909c9c28590cfcf"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.1/term39-0.19.1-linux-64bit-x86-binary.tar.gz"
      sha256 "466c5ecfec47ba1231633474ff6cf0d90572a12f07805e8a00714c0a95b80b33"
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
