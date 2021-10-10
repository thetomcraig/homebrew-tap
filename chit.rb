
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.8.tar.gz?raw=true"
  sha256 "7d9158013786e8b6c928d49cc9b863c67b017adff8acb63566524bbcf529f4ce"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
    mkdir_p theme_definitions
    cp_r "example_theme_definitions", theme_definitions 
  end

end
