class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.2/term39-1.5.2-macos-64bit-arm-binary.tar.gz"
      sha256 "6780b53fbf655f819cad8c1c336ff3d8d270685ed001ab4513be590a3fdb659e"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.2/term39-1.5.2-macos-64bit-x86-binary.tar.gz"
      sha256 "82f1ed0e80a46b5663651fea04e56e424009c4ea02e4e0d6b849224875f4f2b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.2/term39-1.5.2-linux-64bit-arm-binary.tar.gz"
      sha256 "7bb3994fdd1e398ce07054a68f3e5399163cc86c9934060118aaa329b024a014"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.5.2/term39-1.5.2-linux-64bit-x86-binary.tar.gz"
      sha256 "64c2829b10d1187acd1530715120ef4bc5b94bd95c04593e0fc853e31e3f2829"
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
