class GeometryDashTerminal < Formula
  desc "An ASCII version of Geometry Dash by RobTop built for your terminal"
  homepage "https://github.com/evanl23/geometry-dash-terminal"
  url "https://github.com/evanl23/geometry-dash-terminal/archive/refs/tags/v1.0.tar.gz"
  sha256 "b329f2828e5f1114264c809b0363d58da14a0c9d00c926452005654c878759d1"
  license "MIT"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "terminal-dash"
    pkgshare.install "levels/stereomadness.txt"
  end

  def caveats
    <<~EOS
      To play the game:
        terminal-dash

      The level file is installed at:
        #{opt_pkgshare}/stereomadness.txt
    EOS
  end
end
