class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.2.0/term39-1.2.0-macos-64bit-arm-binary.tar.gz"
      sha256 "3695277d8585193cec9e44e643c86e1ee953594c3fe5eb1959620439fb57fce3"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.2.0/term39-1.2.0-macos-64bit-x86-binary.tar.gz"
      sha256 "cdd4d1e3cdce7db7d7db106fd91e7e1789dc38aa63f35fbfb231b5453f89efa4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.2.0/term39-1.2.0-linux-64bit-arm-binary.tar.gz"
      sha256 "ffbca021ff6136a65ee2051271ebcf49b639af198fc50b28d992c219e23ac868"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.2.0/term39-1.2.0-linux-64bit-x86-binary.tar.gz"
      sha256 "a2b9df098db1484af318b424cfffe21a1bdd45558df988a9ee0c2ed0c0876aec"
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
