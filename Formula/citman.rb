class Citman < Formula
  desc "Simple citation manager"
  homepage "https://github.com/herbertwxin/Citman"
  url "https://github.com/herbertwxin/Citman/releases/download/v0.4/Citman-v0.4.tar.gz"
  sha256 "6f8a20e3f6eafd51663223a666370167ea44f42a984e789521b208d3043e01f8"
  license "MIT"

  depends_on xcode: ["14.0", :build]

  def install
    system "./scripts/build_app.sh", "--disable-sandbox"
    prefix.install "Citman.app"
    bin.write_exec_script "#{prefix}/Citman.app/Contents/MacOS/Citman"
  end

  test do
    assert_match "Citman", shell_output("#{bin}/Citman --help")
  end
end