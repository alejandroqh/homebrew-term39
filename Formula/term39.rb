class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.14.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.1/term39-0.14.1-macos-64bit-arm-binary.tar.gz"
      sha256 "ae27a587038fe4fa492dd2d287942188f4fe5a595dbd37cfdee2fbe19f25888a"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.1/term39-0.14.1-macos-64bit-x86-binary.tar.gz"
      sha256 "820f5379ad54a798e73002de5ebf53c8b1dae91ba40ae0e96ab7ef6f95c61b3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.1/term39-0.14.1-linux-64bit-arm-binary.tar.gz"
      sha256 "3fbcbac3f71920474134f7f77b44f10626e24b963d7c0174d3f7a5839c740edd"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.14.1/term39-0.14.1-linux-64bit-x86-binary.tar.gz"
      sha256 "22f9124f9a7fbdac1cdfd849ef98ebc4dc84ff1af69aec32545fd50bc3cd566f"
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
