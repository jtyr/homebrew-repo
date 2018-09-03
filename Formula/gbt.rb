class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.2.0"
  revision 3
  url "https://github.com/jtyr/gbt/releases/download/v1.2.0/gbt-1.2.0-darwin-amd64.tar.gz"
  sha256 "6b626d4da6344d6db36647d44d505faf722b755543c0882f78a2b28a00b05d28"
  conflicts_with "gbt-git", :because => "only one GBT can be installed"

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
