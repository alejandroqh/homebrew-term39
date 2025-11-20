class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.10.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.3/term39-0.10.3-macos-64bit-arm-binary.tar.gz"
      sha256 "a6fa1952b2cd021a224f73075bcefaeb53c453926069c97d149b64db3f10c720"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.3/term39-0.10.3-macos-64bit-x86-binary.tar.gz"
      sha256 "f2df971d55c7de31b4054ee252ccf75729cc5993a10652e22017198f6f80441b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.3/term39-0.10.3-linux-64bit-arm-binary.tar.gz"
      sha256 "22c0c3c583057dced0b291e7b53e5d39a3417639f4bb6c3b8532b14738e181de"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.3/term39-0.10.3-linux-64bit-x86-binary.tar.gz"
      sha256 "0be658cb31aacbec7f3b033df8ae012767a822f0a71eac2f2b2fef91cbcf6053"
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
