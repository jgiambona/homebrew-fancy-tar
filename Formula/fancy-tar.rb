class FancyTar < Formula
  desc "Tar with progress, file info, and notifications"
  homepage "https://github.com/jgiambona/fancy-tar"
  url "https://github.com/jgiambona/fancy-tar/releases/download/v1.4.0/fancy-tar-1.4.0.tar.gz"
  sha256 "c2afaf638b9688aaf1344c5207ddf6331d40ffeaf4736a00f0d19816e13977e4"
  license "MIT"

  depends_on "pv"

  def install
    bin.install "scripts/fancy_tar_progress.sh" => "fancy-tar"
    man1.install "docs/fancy-tar.1"
    bash_completion.install "completions/fancy-tar.bash" => "fancy-tar"
    zsh_completion.install "completions/fancy-tar.zsh" => "_fancy-tar"
    fish_completion.install "completions/fancy-tar.fish"
  end

  test do
    system "#<built-in function bin>/fancy-tar", "-h"
  end
end
