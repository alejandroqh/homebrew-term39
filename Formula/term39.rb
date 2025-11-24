class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.12.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.12.0/term39-0.12.0-macos-64bit-arm-binary.tar.gz"
      sha256 "dc79499b7aa684ca4e48978f0c785c651d47fa9574c1a562b86234f548a2c247"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.12.0/term39-0.12.0-macos-64bit-x86-binary.tar.gz"
      sha256 "77ddda15ba82ed3a031456b2a8c33f60b9c3e3dd5d8b93679238167557623639"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.12.0/term39-0.12.0-linux-64bit-arm-binary.tar.gz"
      sha256 "cc71b0e81bdd7c24ef86405793e1c6b4efcf45babad0809b552eb86ff7659f54"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.12.0/term39-0.12.0-linux-64bit-x86-binary.tar.gz"
      sha256 "0188a5c75d9b65bc9bb8d00a9dd9a943c09d5917c8c9d2474283ae9a495b6d23"
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
