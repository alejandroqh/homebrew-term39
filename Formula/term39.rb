class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.16.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.5/term39-0.16.5-macos-64bit-arm-binary.tar.gz"
      sha256 "2a21fe0f49b7169e41aa65fb6ada24a1f728f0d37f54e51d10241244e0a58207"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.5/term39-0.16.5-macos-64bit-x86-binary.tar.gz"
      sha256 "79e5db2d8e631a1e5692f429df510003cc4c67bc9c6b084d264aa29fea82c2db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.5/term39-0.16.5-linux-64bit-arm-binary.tar.gz"
      sha256 "e55c6dc5888b566fb11e66ba1d1d77cacbe978bd479176f4f6823f9571059f36"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.5/term39-0.16.5-linux-64bit-x86-binary.tar.gz"
      sha256 "f3b3fe5b7d96c3a790ca69ed8a43560ef1a7f1c2e09cb5280706e55c1998033d"
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
