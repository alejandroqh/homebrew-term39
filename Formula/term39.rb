class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.0/term39-1.5.0-macos-64bit-arm-binary.tar.gz"
      sha256 "f770af3a73c5362da25f2328a0ccd1364ff0506d0cc3248b668a11c4883252a3"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.0/term39-1.5.0-macos-64bit-x86-binary.tar.gz"
      sha256 "cebaf6080782f6b2f99c4130bd28c7ab383af083c1fb5361676454cd29b73102"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.0/term39-1.5.0-linux-64bit-arm-binary.tar.gz"
      sha256 "7cab79407a8566512f99fca218842eaf90e2e339fd8e560aa807458f1d75ba30"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.0/term39-1.5.0-linux-64bit-x86-binary.tar.gz"
      sha256 "c3ee110f5171f3ae6ad952555a8762d03f2480a65c95e971faae54dca916d849"
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
