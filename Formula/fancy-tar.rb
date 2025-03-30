class FancyTar < Formula
  desc "Tar with progress, file info, encryption, and hash verification"
  homepage "https://github.com/jgiambona/fancy-tar"
  url "https://github.com/jgiambona/fancy-tar/releases/download/v1.4.6/fancy-tar-1.4.6.tar.gz"
  sha256 "1375230a4c9ecd297c09d8d705ccb897ba2a5430ec9fc227d0f8ed8ba2c70d65"
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
