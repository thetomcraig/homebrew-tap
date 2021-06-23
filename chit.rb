
class Chit < Formula
  CONFIG_DIR = "${HOME}/.config/chit"
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.1.8.tar.gz?raw=true"
  sha256 "71359bc3502abe80d57be528fdbdd23d0018b4868266eaf4060c93dc70270e06"
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
