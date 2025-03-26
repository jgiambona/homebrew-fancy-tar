class FancyTar < Formula
  desc "Tar with progress, file info, and notifications"
  homepage "https://github.com/jgiambona/fancy-tar"
  url "https://github.com/jgiambona/fancy-tar/releases/download/v1.3.10/fancy-tar-1.3.10.tar.gz"
  sha256 "1216799ff2013bd408c431874a3976d20373c893ed8119a34d509d782969e78f"
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
