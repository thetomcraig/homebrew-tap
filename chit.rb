
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.3.1.tar.gz?raw=true"
  sha256 "0e1d0fbcccc1d48f8dcbdf512fcdd6eb6a7049e2f5187109f33b63e807e15857"
  license "MIT"

  bottle :unneeded

  def install
    # Install binary
    bin.install "chit.sh" => "chit"
    # The "version" file is used so chit knows what version of itself is installed
    bin.install "version"

    # Install the example themes into share,
    # so they will be removed on formula uninstall
    share.install "example_theme_definitions"
    share.install "iterm"
    # When chit's setup is run,
    # these will be copied over to the config folder
  end

end
