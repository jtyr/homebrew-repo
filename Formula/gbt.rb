class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.2.0"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.2.0/gbt-1.2.0-darwin-amd64.tar.gz"
  sha256 "59b51d8da2ef14debf604edcb3b1752c46ed5247e7154ad07bd3aa8465e2e1de"

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
