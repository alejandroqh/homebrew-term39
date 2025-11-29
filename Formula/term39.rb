class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.0/term39-0.15.0-macos-64bit-arm-binary.tar.gz"
      sha256 "fe07c136a7e975483dbb2f4f76974b7467c7e66cf5ee7572a0dba32ea0773a27"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.0/term39-0.15.0-macos-64bit-x86-binary.tar.gz"
      sha256 "06a3d431259bda8631042ff3d38fa0dcf74b1a4b4f909e37e495d3aaf68136af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.0/term39-0.15.0-linux-64bit-arm-binary.tar.gz"
      sha256 "3226cc5df618111c7945fa4db6e8d68e4fa57f88abad9e5ccd148a3098db5774"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.15.0/term39-0.15.0-linux-64bit-x86-binary.tar.gz"
      sha256 "01822b4d79323d966b2bd3307bfff61d13edde6fafc6dcdf9f2a82fa05d8c445"
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
