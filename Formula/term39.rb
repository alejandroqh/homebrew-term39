class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.8.5/term39-0.8.5-macos-64bit-arm-binary.tar.gz"
      sha256 "9dab7293a37b7e11261e5a3fec03441c40b5c05c09268a42cbf302cef6ce8dc2"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.8.5/term39-0.8.5-macos-64bit-x86-binary.tar.gz"
      sha256 "1ee9062d4986f401ba71714d919a0f08078af459ab0e3ddcd34a12c9f434ccae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.8.5/term39-0.8.5-linux-64bit-arm-binary.tar.gz"
      sha256 "6f795ad28668b297566350aa8928e40dea6962a90e66ad37b26697338f5e09ac"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.8.5/term39-0.8.5-linux-64bit-x86-binary.tar.gz"
      sha256 "33a8459d045187254c90189d46e49e630d00268f0f50e98e25010677af0767f8"
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
