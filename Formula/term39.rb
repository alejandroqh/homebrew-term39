class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.19.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.5/term39-0.19.5-macos-64bit-arm-binary.tar.gz"
      sha256 "b407dd55e49c37484ee2d8adc40c04ce46a53c1f28cd428cf7da64606919338c"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.5/term39-0.19.5-macos-64bit-x86-binary.tar.gz"
      sha256 "a912f0f0ee9621e4321ffd1ad0c6761f65ba031dfda95020a3abac27724edf34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.5/term39-0.19.5-linux-64bit-arm-binary.tar.gz"
      sha256 "7ef96825b5930ebf2020a817e4e9c39f2560c992a6bcf1bcfe80b8d098c99361"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.5/term39-0.19.5-linux-64bit-x86-binary.tar.gz"
      sha256 "25a70b6df36a5f4dba6d091a4057e8f74da4cb52fa2ad8065504a1355b19dff0"
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
