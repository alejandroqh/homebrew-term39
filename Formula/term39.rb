class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.17.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.2/term39-0.17.2-macos-64bit-arm-binary.tar.gz"
      sha256 "86fe079e82a83b20840de179088ef96a8895116299114572737c035f173810d1"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.2/term39-0.17.2-macos-64bit-x86-binary.tar.gz"
      sha256 "1684f6456436782b82c9f393aea2430bfaf6852c0a21a7821df6fbbcb1ea894f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.2/term39-0.17.2-linux-64bit-arm-binary.tar.gz"
      sha256 "b6fe3fd2eace8c7a14c420e37bdebd6bcd174739ce69624691c736b9b79252dd"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.17.2/term39-0.17.2-linux-64bit-x86-binary.tar.gz"
      sha256 "de47325cba98c25cc1d8220a02097b208052b6fbce60ed2d4f6987e22581254a"
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
