
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.3.2.tar.gz?raw=true"
  sha256 "e5b5ecb22a71ca96609788e3b519a2f9ac748238f13e90f846395bd695b97da5"
  license "MIT"

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
