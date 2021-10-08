
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.3.tar.gz?raw=true"
  sha256 "df69490646747de5d838890ad0d48c2b889d11772bfd021effb374aa92373b52"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

end
