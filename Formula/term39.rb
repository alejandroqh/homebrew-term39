class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.16.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.7/term39-0.16.7-macos-64bit-arm-binary.tar.gz"
      sha256 "8eb85bfa702d56bc1c67aa769a5c592cf6d9292ce04679d54371c5c479a640e0"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.7/term39-0.16.7-macos-64bit-x86-binary.tar.gz"
      sha256 "9d1ff8379cc786b9c0a5d338e8ab0ceab3b92543b4349959af313b7aa1512168"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.7/term39-0.16.7-linux-64bit-arm-binary.tar.gz"
      sha256 "4025be4d701f3b2ffe612f1ca46d897682d17cc0b7a254a2bb36bb24df573f7b"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.16.7/term39-0.16.7-linux-64bit-x86-binary.tar.gz"
      sha256 "340e6bfc8a19c30d726d267b75699379a1cace748107e62a44870c483e73d298"
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
