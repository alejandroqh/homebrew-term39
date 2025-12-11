class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.20.0/term39-0.20.0-macos-64bit-arm-binary.tar.gz"
      sha256 "e93f9f4f003919c14b60d6c0f64468409d1d550b89a87de0e66b8e5148ddaf16"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.20.0/term39-0.20.0-macos-64bit-x86-binary.tar.gz"
      sha256 "16c36dbd2c6293a3b26cfcbdd5b6fd422d6329c35a5f76029301332264892d37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.20.0/term39-0.20.0-linux-64bit-arm-binary.tar.gz"
      sha256 "f3d7d5a98c7a90d4abd5ef34c1079dfda74c28955593d74c117d5a4573cf47aa"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.20.0/term39-0.20.0-linux-64bit-x86-binary.tar.gz"
      sha256 "cad0018dd4ba5c346dbd9c69640b9a9fa0603d3854f2446e2d072d9532f44802"
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
