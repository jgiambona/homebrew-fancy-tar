class FancyTar < Formula
  desc "Tar with progress, file info, encryption, and hash verification"
  homepage "https://github.com/jgiambona/fancy-tar"
  url "https://github.com/jgiambona/fancy-tar/releases/download/v1.6.7/fancy-tar-1.6.7.tar.gz"
  sha256 "a21fbccea80be26dbee12774ac3f3bcdac48dbf296e99799d52287c6ac883319"
  license "MIT"

  depends_on "pv"
  depends_on "gnu-tar"
  depends_on "coreutils"
  depends_on "gpg" => :optional
  depends_on "openssl@3" => :optional
  depends_on "p7zip" => :optional

  def install
    bin.install "scripts/fancy_tar_progress.sh" => "fancy-tar"
    man1.install "docs/fancy-tar.1"
    bash_completion.install "completions/fancy-tar.bash" => "fancy-tar"
    zsh_completion.install "completions/fancy-tar.zsh" => "_fancy-tar"
    fish_completion.install "completions/fancy-tar.fish"
  end

  test do
    assert_match "fancy-tar", shell_output("#{bin}/fancy-tar --version")
  end
end
