class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.5"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.5/gbt-1.1.5-darwin-amd64.tar.gz"
  sha256 "38b994fe3504c880485a7de2a490ab3a9ab897bd782dad97650126c2acfdbc6f"

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
