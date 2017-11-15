class Gbt < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  version "1.1.0"
  revision 1
  url "https://github.com/jtyr/gbt/releases/download/v1.1.0/gbt-1.1.0-darwin-amd64.tar.gz"
  sha256 "1456bc970d11061b98255353e3db4918470f1446790326e9db4089cb20e3b067"

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
