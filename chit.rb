
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.2.9.tar.gz?raw=true"
  sha256 "2bd506ce5c6baa9feea563b4ff47b446ee6f9b5b26e89f01c610333bd31c0211"
  license "MIT"

  bottle :unneeded

  def install
    # Install binary
    bin.install "chit.sh" => "chit"
    # Install the example themes into share,
    # so they will be removed on formula uninstall
    share.install "example_theme_definitions"
    # The user-defined themes will live in the main ~/.config folder
  end

end
