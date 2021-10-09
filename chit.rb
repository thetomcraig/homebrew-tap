
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.6.tar.gz?raw=true"
  sha256 "bff7f54639ac8c772aa264c4e4f7dd0beafc9d4f876587a311b94a05ec6f2f5b"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

end
