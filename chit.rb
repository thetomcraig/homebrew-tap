class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.1.0.tar.gz?raw=true"
  sha256 "84052f9f747b0cb207173d576ac77d0ee90273a0a9108922be0d81be9821698e"
  license "BSD-3-Clause"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
    # Folder to hold the example thome .conf files
    # When initializing chit, these are copied to ~/.config/chit/theme_definitions/examples
    etc.install "example_theme_definitions" => "chit/example_theme_definitions"
    etc.install "kitty_themes" => "chit/kitty_themes"
  end
end

