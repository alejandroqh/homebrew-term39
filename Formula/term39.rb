class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.0.0/term39-1.0.0-macos-64bit-arm-binary.tar.gz"
      sha256 "4d650e02dc1bb473844b1cfffb900ea699052327a9b9ebb18e2fa8f940b5a94a"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.0.0/term39-1.0.0-macos-64bit-x86-binary.tar.gz"
      sha256 "de6c61bc70f22d6a59e1aa46bf24a40d6d1e86941a5c3f8566a5bbdf8aeb0ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v1.0.0/term39-1.0.0-linux-64bit-arm-binary.tar.gz"
      sha256 "55e5e689cb8890d98bae86d31ebced795d970d703f9d49517394e3942496ad60"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v1.0.0/term39-1.0.0-linux-64bit-x86-binary.tar.gz"
      sha256 "87c9d19c5f5c834b9d5db4fabbbb76674bfe9a4414d41f7cb44967b91ac0ec5d"
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
