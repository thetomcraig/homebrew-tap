
class Chit < Formula
  CONFIG_DIR = "${HOME}/.config/chit"
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.1.6.tar.gz?raw=true"
  sha256 "2133faf798269a7ba291aaadcd9c9ef568b2b11c20914c0455bc2b44c2edae74"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"
  end

  def post_install
    # WIP write this to replace the "setup" command
    #
    CONFIG_DIR.mkpath
    (CONFIG_DIR/"theme_definitions").mkpath
    (CONFIG_DIR/"kitty_themes").mkpath


    system "cp", "example_theme_definitions", CONFIG_DIR/"theme_definitions"
    system "cp", "kitty_themes", CONFIG_DIR/"kitty_themes"


    system "echo", ">", "'dark'", CONFIG_DIR/"currrent_theme"
    system "echo", ">", "''", CONFIG_DIR/"tmux_theme.conf"
    #etc.install "example_theme_definitions" => CONFIG_DIR/"theme_definitions"
    #etc.install "kitty_themes" => CONFIG_DIR/"kitty_themes"
  end

end
