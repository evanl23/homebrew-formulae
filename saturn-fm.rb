class SaturnFm < Formula 
  desc "An animated TUI for enjoying music while studying."
  homepage "https://github.com/evanl23/saturn.fm"
  url "https://github.com/evanl23/saturn.fm/archive/refs/tags/v1.0.1.tar.gz"
  version "v1.0.1"
  sha256 "6d8ab05dd2cb51af3c5a1f08d66336768ee653ed5ffe52f4a751f22703161f28"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "bash"
  depends_on "coreutils"

  def install 
    bin.install "saturn.fm" => "saturn.fm"
  end 

  def caveats 
    <<~EOS
      To run saturn.fm:
        saturn.fm

      The Saturn animation uses ffplay to stream audio and render frames.
      Ensure your terminal supports true color. 

      Happy listening! 
    EOS
  end
end
