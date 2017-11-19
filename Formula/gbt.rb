class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.2"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.2/gbt-1.1.2-darwin-amd64.tar.gz"
  sha256 "bb1fcbbacb8a6ad1c2e336bfc1e01aea30531e43915229010220d08d11e93ef8"

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
