class SaturnFm < Formula 
  desc "An animated TUI for enjoying music while studying."
  homepage "https://github.com/evanl23/saturn.fm"
  url "https://github.com/evanl23/saturn.fm/archive/refs/tags/v1.0.0.tar.gz"
  version "v1.0.0"
  sha256 "c43137a0fdff1de5ee06ea0defd7f3cf9dacdc7260f1cf23f177f1e708eea85e"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "bash"

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
