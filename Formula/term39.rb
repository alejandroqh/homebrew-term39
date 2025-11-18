class Term39 < Formula
  desc "Modern, retro-styled terminal multiplexer with a classic MS-DOS aesthetic"
  homepage "https://github.com/alejandroqh/term39"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.9.0/term39-0.9.0-macos-64bit-arm-binary.tar.gz"
      sha256 "234f9e0c1fb06d97d03076dd04149fc4979062f67fe40370141606d035dc1402"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.9.0/term39-0.9.0-macos-64bit-x86-binary.tar.gz"
      sha256 "4e52b45e19509b53cdb04692fa91f5833d7384ae63e9c4010dbdfde790e9494b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alejandroqh/term39/releases/download/v0.9.0/term39-0.9.0-linux-64bit-arm-binary.tar.gz"
      sha256 "6cc622e806e8cde29b094c0e21c06467cece5d29c8930a3c590c55334d0fa649"
    end

    on_intel do
      url "https://github.com/alejandroqh/term39/releases/download/v0.9.0/term39-0.9.0-linux-64bit-x86-binary.tar.gz"
      sha256 "73385955a5d601f1c06b4e33da29d72727a57c10183b863029395d380531ab89"
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
