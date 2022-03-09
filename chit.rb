
class Chit < Formula
  desc "Change your terminal color schemes"
  homepage "https://github.com/thetomcraig/Chit"
  url "https://github.com/thetomcraig/chit/blob/main/archive/chit.0.3.3.tar.gz?raw=true"
  sha256 "28daec792395e16fcc12e23a3f3267c819947c92b425b2a25c03dc4010728624"
  license "MIT"

  def install
    # Install binary
    bin.install "chit.sh" => "chit"

    # Install the example themes into share,
    # so they will be removed on formula uninstall
    # When chit's setup is run,
    # these will be copied over to the config folder
    share.install "example_theme_definitions"

    share.install "iterm"
  end

end
