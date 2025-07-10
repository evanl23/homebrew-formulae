class TerminalDash < Formula
  desc "An ASCII version of Geometry Dash by RobTop built for your terminal"
  homepage "https://github.com/evanl23/geometry-dash-terminal"
  url "https://github.com/evanl23/geometry-dash-terminal/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "9928a3ad97b0c6b1e633e98f9b6111129be13fa53acd38285ff326e4b56d5b71"
  license "MIT"

  depends_on "ncurses"

  def install
    system "make"
    bin.install "terminal-dash" => "terminal-dash-bin"
    pkgshare.install "levels/stereomadness.txt"

    (bin/"terminal-dash").write <<~EOS
      #!/bin/bash
      LEVEL_FILE="#{pkgshare}/stereomadness.txt"
      exec "#{bin}/terminal-dash-bin" "$LEVEL_FILE"
    EOS

    # make sure wrapper is executable
    chmod 0755, bin/"terminal-dash"  
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
