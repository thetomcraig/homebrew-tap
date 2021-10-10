
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.3.0.tar.gz?raw=true"
  sha256 "01ffb3dca98e99332184671c53c1cc2c6b665c4b3e2bd67f6402a3df43830816"
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
    # When chit's setup is run,
    # these will be copied over to the config folder
  end

end
