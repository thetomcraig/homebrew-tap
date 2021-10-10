
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.7.tar.gz?raw=true"
  sha256 "5dd080168a53832720dc6419f74e9a6787c35c34bf6d0e3fd2388da5e147b35c"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
    bin.install "chit2"
  end

end
