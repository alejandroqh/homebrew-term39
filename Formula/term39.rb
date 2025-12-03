class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.0/term39-0.17.0-macos-64bit-arm-binary.tar.gz"
      sha256 "23e2d990bc3943df1a136747ec989eefbd298b1eeef474cdb7901dc5e7e562a5"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.0/term39-0.17.0-macos-64bit-x86-binary.tar.gz"
      sha256 "3ecf76946c6d4d48270c6429ff49145f34da76e3b6943496e087ee24d6c6c46c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.0/term39-0.17.0-linux-64bit-arm-binary.tar.gz"
      sha256 "89d01c2f7508cbc454a119bceae735371fdf6d663b02c212df0b8b00d75185a9"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.0/term39-0.17.0-linux-64bit-x86-binary.tar.gz"
      sha256 "099c269c8b3b77e4e0af39f0a4fa847b4dbc86d0c58ecf63dbc569ee7025be31"
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
