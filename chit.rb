
class Chit < Formula
  CONFIG_DIR = "${HOME}/.config/chit"
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.0.tar.gz?raw=true"
  sha256 "cf758c116532584ee87ca8f9919205b3541ab1c7789d2a8377ea7769d3c4d158"
  license "MIT"

  bottle :unneeded

  def install
    system "./build"
    bin.install "chit"

    system "./configure"
  end

  def post_install
    # WIP write this to replace the "setup" command
    #
    #mkdir_p "#{var}/log/nexus" unless (var/"log/nexus").exist?
    #
    # mkdir_p "#{CONFIG_DIR}/theme_definitions"
    # mkdir_p "#{CONFIG_DIR}/kitty_themes"

    # system "cp", "example_theme_definitions", CONFIG_DIR/"theme_definitions"
    # system "cp", "kitty_themes", CONFIG_DIR/"kitty_themes"

    # system "echo", ">", "'dark'", CONFIG_DIR/"currrent_theme"
    # system "echo", ">", "''", CONFIG_DIR/"tmux_theme.conf"

    #etc.install "example_theme_definitions" => CONFIG_DIR/"theme_definitions"
    #etc.install "kitty_themes" => CONFIG_DIR/"kitty_themes"
  end

end
