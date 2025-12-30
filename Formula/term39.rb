class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.1.0/term39-1.1.0-macos-64bit-arm-binary.tar.gz"
      sha256 "e443cf563aaab669a0657f8966f7978fbd03f2222640a744196c3270312a9a67"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.1.0/term39-1.1.0-macos-64bit-x86-binary.tar.gz"
      sha256 "d7d12946bdb61073b780b1013e9353330de66b0bcb81be10c541d7bd859edf7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.1.0/term39-1.1.0-linux-64bit-arm-binary.tar.gz"
      sha256 "98cb147c53556e6d09f75b0d0d96c1026955c4468ed49acef59775b67ba1c610"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.1.0/term39-1.1.0-linux-64bit-x86-binary.tar.gz"
      sha256 "337d73908da5cac4873995f825a0f379eed7b8f39fc6e44985e55c1e22ad5583"
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
