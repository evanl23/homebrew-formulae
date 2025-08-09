class SaturnFm < Formula 
  desc "An animated TUI for enjoying music while studying."
  homepage "https://github.com/evanl23/saturn.fm"
  url "https://github.com/evanl23/saturn.fm/archive/refs/tags/v1.0.2.tar.gz"
  version "v1.0.2"
  sha256 "b6e5ba38c3cff19e46d81e65a2562f279571c0048618f178b5700e50544846e5"
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
