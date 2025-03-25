class FancyTar < Formula
  desc "Tar with progress, file info, and notifications"
  homepage "https://github.com/jgiambona/fancy-tar"
  url "https://github.com/jgiambona/fancy-tar/releases/download/v1.3.4/fancy-tar-1.3.4.tar.gz"
  sha256 "356ce88f919d1bba63bafc11fa554cc3fbac946971ab89b97a161a43fac14a3d"
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
