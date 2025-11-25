class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.13.0/term39-0.13.0-macos-64bit-arm-binary.tar.gz"
      sha256 "9d9b85884deaf206b86f3a475d70484e03a18825a4790136a21927ca80b77129"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.13.0/term39-0.13.0-macos-64bit-x86-binary.tar.gz"
      sha256 "2f638ea8a9cae9cf345e54dcdf6fb1878fe4ba01146a8c747f846e576b91c32c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.13.0/term39-0.13.0-linux-64bit-arm-binary.tar.gz"
      sha256 "cfcfc33429d42b15ef9693a79916f25cf0d3cf6b02d68287c90234332a3d3b8f"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.13.0/term39-0.13.0-linux-64bit-x86-binary.tar.gz"
      sha256 "589f2fbc19f945feea05ca303afd6a207446c829bed75fae30929579ece1c450"
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
