class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.0/term39-0.10.0-macos-64bit-arm-binary.tar.gz"
      sha256 "d639d7fa23ae943b8ce91b978dc9a74546d0495c556bfef5fce807737dc1ba46"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.0/term39-0.10.0-macos-64bit-x86-binary.tar.gz"
      sha256 "a56878b0b8204a4d3a29e06ccfa323ad3d67dea1daf9581d9b216b68d60545ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.0/term39-0.10.0-linux-64bit-arm-binary.tar.gz"
      sha256 "2f314337ae1c314f9131b3ea4ed90948dff545ea4f352379accafa94fde70cde"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.10.0/term39-0.10.0-linux-64bit-x86-binary.tar.gz"
      sha256 "84b4e17ebb44c6c17b30bd9073dcd8983be1e856fd6d56d26fa368382cd8fab6"
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
