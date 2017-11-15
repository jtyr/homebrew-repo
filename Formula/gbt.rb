class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.1"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.1/gbt-1.1.1-darwin-amd64.tar.gz"
  sha256 "565449fb28c662fcbb18f5945ea9542c8f8b42d55354325d625a7fc64c63da50"

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
