class TerminalDash < Formula
  desc "An ASCII version of Geometry Dash by RobTop built for your terminal"
  homepage "https://github.com/evanl23/geometry-dash-terminal"
  url "https://github.com/evanl23/geometry-dash-terminal/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "292b0724eb62115b1d6c2c1107343c12981a0d5ac9edbfee796c877635bedd59"
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
