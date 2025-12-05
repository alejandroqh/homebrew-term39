class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.18.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.18.0/term39-0.18.0-macos-64bit-arm-binary.tar.gz"
      sha256 "c5f501a45b6d67e000f0a3f407cddb086f3ecfedfa4bf6d064e5565aeaaeb641"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.18.0/term39-0.18.0-macos-64bit-x86-binary.tar.gz"
      sha256 "b6a0ab8115951acfe4ada9ad7b069363bc0bfd4ca05149902ef8f1379ae9b752"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.18.0/term39-0.18.0-linux-64bit-arm-binary.tar.gz"
      sha256 "7550b95b6943ff173d5985e56f50485882da3e841516395b2bb3be7a509898fe"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.18.0/term39-0.18.0-linux-64bit-x86-binary.tar.gz"
      sha256 "4fa7eed95478db13d95e858998b51112d6bb4eddef37203ddad65c7a374ff5c7"
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
