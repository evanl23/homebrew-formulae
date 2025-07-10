class GeometryDashTerminal < Formula
  desc "An ASCII version of Geometry Dash by RobTop built for your terminal"
  homepage "https://github.com/evanl23/GeometryDash"
  url "https://github.com/evanl23/GeometryDash/archive/refs/tags/v1.0.tar.gz"
  sha256 "b329f2828e5f1114264c809b0363d58da14a0c9d00c926452005654c878759d1"
  license "MIT"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "dash"
    pkgshare.install "stereomadness.txt"
  end

  def caveats
    <<~EOS
      To play the game:
        dash

      The level file is installed at:
        #{opt_pkgshare}/stereomadness.txt
    EOS
  end
end
