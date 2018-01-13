class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.6"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.6/gbt-1.1.6-darwin-amd64.tar.gz"
  sha256 "42da7dc59a13797db09c4443d67eb894a7e1dd1ebb4d12c2b233f70d5fe2ece0"

  def install
    bin.install "gbt"
    doc.install "README.md"
    doc.install "LICENSE"
    pkgshare.install Dir["sources"]
    pkgshare.install Dir["themes"]
  end

  test do
    system "gbt", "-version"
  end
end
