class TerminalDash < Formula
  desc "An ASCII version of Geometry Dash by RobTop built for your terminal"
  homepage "https://github.com/evanl23/terminal-dash"
  url "https://github.com/evanl23/terminal-dash/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "7c209cb3014cfcf46f7819053576a27a604a058c1f97d21dd419ce5a37eacd44"
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
