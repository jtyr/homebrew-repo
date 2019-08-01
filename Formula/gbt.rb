class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "2.0.0"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v2.0.0/gbt-2.0.0-darwin-amd64.tar.gz"
  sha256 "cae6c4f3200bfe474d258534fe510538ae8f6583c46a56a89cb6b7a7b0b89024"
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
