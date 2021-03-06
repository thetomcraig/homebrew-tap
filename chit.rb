class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.1.3.tar.gz?raw=true"
  sha256 "43cdcc662440c4334e78fa777a92f8afd3b515e7ea8a3adbb598e54a66fec7f8"
  license "MIT"

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

