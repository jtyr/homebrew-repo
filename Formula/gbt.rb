class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.4"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.4/gbt-1.1.4-darwin-amd64.tar.gz"
  sha256 "380b870341b6fd904fce08feb2ccb648ddcc81abc0522cf0272e9eaabdaf0502"

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
