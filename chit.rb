
class Chit < Formula
  CONFIG_DIR = "${HOME}/.config/chit"
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.1.tar.gz?raw=true"
  sha256 "cca4397b9bb18f7cb254c99a7d226bf01e1aee0c789e5a0ca4be1d30d5a8c584"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

  def post_install
    etc.install "example_theme_definitions" => CONFIG_DIR/"theme_definitions"
    etc.install "kitty_themes" => CONFIG_DIR/"kitty_themes"
  end

end
