class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.0/term39-0.19.0-macos-64bit-arm-binary.tar.gz"
      sha256 "36e67e2275c610fa2ba9e31253d771b387d482fa6394385924ca021a845321c1"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.0/term39-0.19.0-macos-64bit-x86-binary.tar.gz"
      sha256 "cb5dbbbc440dcbdb5260cd4b36897579c4d4d4b9a708dabba0b2d84d7884bdd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.0/term39-0.19.0-linux-64bit-arm-binary.tar.gz"
      sha256 "2242427999a1e6edcea683fbd7dde60dc0fdb95899c2fd717e8a4e9ed69e0acb"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.19.0/term39-0.19.0-linux-64bit-x86-binary.tar.gz"
      sha256 "3cdf7c1de1773bfcd89d2cc7f8fc0ec1c01b8e05ccebfa62102df1a192cfbbda"
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
