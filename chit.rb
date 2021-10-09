
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.5.tar.gz?raw=true"
  sha256 "a83f53f2765a97db2660a4b3724f0bad1958829c7b346c573aa8bccb19964f71"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

end
