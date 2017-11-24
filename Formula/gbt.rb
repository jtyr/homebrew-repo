class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.3"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.3/gbt-1.1.3-darwin-amd64.tar.gz"
  sha256 "55f41bb882408873274d78eca687e934b69f1714803ff61e23373a8bb4f12a67"

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
