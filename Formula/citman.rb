class Citman < Formula
  desc "Citman: A simple citation manager"
  homepage "https://github.com/herbertwxin/Citman"
  url "https://github.com/herbertwxin/Citman/releases/download/v0.2/Citman-v0.2.tar.gz"
  sha256 "e920050f494b75541d4554fea18f06a9ed1d48c68b7039756b2122142e5ca9a6"
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