class Citman < Formula
  desc "Citman: A simple citation manager"
  homepage "https://github.com/herbertwxin/Citman"
  url "https://github.com/herbertwxin/Citman/releases/download/v0.3/Citman-v0.3.tar.gz"
  sha256 "e3df0d5669829f073adbe0b3ca1f56ac482d0408044d7576fb5b8919dd0e64c9"
  license "MIT"

  depends_on xcode: ["14.0", :build]

  def install
    system "./scripts/build_app.sh", "--disable-sandbox"
    prefix.install "Citman.app"
    bin.write_exec_script "#{prefix}/Citman.app/Contents/MacOS/Citman"
  end

  test do
    system "#{bin}/Citman", "--help"
  end
end
