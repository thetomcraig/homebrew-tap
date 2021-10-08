
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.4.tar.gz?raw=true"
  sha256 "4470cb4593be4a2b36de45319143b2134e11d7b9c218dce4e5d6aab68dee412c"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

end
