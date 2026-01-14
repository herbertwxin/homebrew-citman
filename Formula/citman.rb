class Citman < Formula
  desc "Citman: A simple citation manager"
  homepage "https://github.com/herbertwxin/Citman"
  url "https://github.com/herbertwxin/Citman/releases/download/v0.1/Citman-v0.1.tar.gz"
  sha256 "bc3b40e4e8e8abf0b2fe4d02a14122f987a8c48bd7f6d2e4a20826000e0dd27b"
  license "MIT"

  depends_on xcode: ["14.0", :build]

  def install
    system "./scripts/build_app.sh"
    prefix.install "Citman.app"
    bin.write_exec_script "#{prefix}/Citman.app/Contents/MacOS/Citman"
  end

  test do
    system "#{bin}/Citman", "--help"
  end
end
