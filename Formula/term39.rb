class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.1/term39-1.5.1-macos-64bit-arm-binary.tar.gz"
      sha256 "139d3e0a1f903108b1d0cf584d910342b7233df0651b180f00bdeebcd460d164"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.1/term39-1.5.1-macos-64bit-x86-binary.tar.gz"
      sha256 "1c7b86a31e1917e27dd9932bb7863514cde1751101bb25fffc3ecef5ae81614c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.1/term39-1.5.1-linux-64bit-arm-binary.tar.gz"
      sha256 "e8583551d6185a7045aafec15bf9416ba5738e7ac850a179541d23092a5363da"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.1/term39-1.5.1-linux-64bit-x86-binary.tar.gz"
      sha256 "02da1979cf4dff3ef4805b101cde9d7dc0780e3f3d248e72c05d68a07541d109"
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
