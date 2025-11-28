class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.14.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.5/term39-0.14.5-macos-64bit-arm-binary.tar.gz"
      sha256 "e864dd8c0e5011f270fd54cc81fb484235379194610f33b4dd51559050da8a45"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.5/term39-0.14.5-macos-64bit-x86-binary.tar.gz"
      sha256 "ddf780e8a5e648621e7326d8003bfbf99f48791c2b0b03d515a0151a09db5e6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.5/term39-0.14.5-linux-64bit-arm-binary.tar.gz"
      sha256 "7305a4ce0255b3a1f6d97932d8a512ed2ed632fcbbbf3f1f2b2921dbf034efa8"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.5/term39-0.14.5-linux-64bit-x86-binary.tar.gz"
      sha256 "28259b90d19e353584f6e6d4818b163ff7a08abc63e293addad9b728391aeef6"
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
