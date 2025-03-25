class FancyTar < Formula
  desc "Tar with progress, file info, and notifications"
  homepage "https://github.com/yourusername/fancy-tar"
  url "https://github.com/jgiambona/homebrew-fancy-tar/releases/download/v1.0.0/fancy-tar-1.0.0.tar.gz"
  sha256 "8fd9aa52483361705102ee629e04a33b21343df92a39399e5cc15c4612b954a3"

  depends_on "pv"

  def install
    bin.install "fancy_tar_progress.sh" => "fancy-tar"
    man1.install "fancy-tar.1"
  end

  test do
    system "#{bin}/fancy-tar", "-h"
  end
end

