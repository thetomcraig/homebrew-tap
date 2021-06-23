
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.2.tar.gz?raw=true"
  sha256 "82366eaa29fbbbec5e851401b934f4ed2d96f2f61d6c471670f567fe99e674f0"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

end
