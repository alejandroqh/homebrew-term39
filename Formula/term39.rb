class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.15.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.3/term39-0.15.3-macos-64bit-arm-binary.tar.gz"
      sha256 "04c93ad19559dd84c3cd78ab1cb5ed55f3b136c240beb2298298281c7ac0a016"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.3/term39-0.15.3-macos-64bit-x86-binary.tar.gz"
      sha256 "6fbbf323705e5c9799f1e2ff628b90b31d5ef25fcbe7ef40c71eb0b6dcd82978"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.3/term39-0.15.3-linux-64bit-arm-binary.tar.gz"
      sha256 "2044fca6f734196e7a01f5e61582912181ea2f5c29d16394c7e8c14e4c41c2a8"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.3/term39-0.15.3-linux-64bit-x86-binary.tar.gz"
      sha256 "3fce6ec6c2facd19ed578bbf5d0bb9864a9b005362724d720592141dfa5340de"
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
