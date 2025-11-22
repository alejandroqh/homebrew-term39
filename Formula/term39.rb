class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.11.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.0/term39-0.11.0-macos-64bit-arm-binary.tar.gz"
      sha256 "068ef92ab6ae38a4f6abe1d8805b296199765afdc79cb08b7c9863660cd351d8"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.0/term39-0.11.0-macos-64bit-x86-binary.tar.gz"
      sha256 "c37f5372e0cfe0130769ee22e81798d792874aab9c8b4e451b0448f4459925f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.0/term39-0.11.0-linux-64bit-arm-binary.tar.gz"
      sha256 "9ee49b2f6a1136101d69e55460e111b06fe96292d8a7c150179ffde598f771ee"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.11.0/term39-0.11.0-linux-64bit-x86-binary.tar.gz"
      sha256 "aab5a1edf667a846151395cd291802c654440a83500c3c16cb61521ea801c932"
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
