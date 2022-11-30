class GbtGit < Formula
  desc "Highly configurable prompt builder for Bash and ZSH written in Go."
  homepage "https://github.com/jtyr/gbt"
  revision 2
  head "https://github.com/jtyr/gbt.git", :branch => "main"
  sha256 ""
  conflicts_with "gbt", :because => "because only one GBT can be installed"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    dir = buildpath/"src/github.com/jtyr/gbt"
    dir.install buildpath.children

    cd dir do
      system "go", "install", "./cmd/gbt"
      bin.install buildpath/"bin/gbt"
      doc.install "README.md"
      doc.install "LICENSE"
      pkgshare.install Dir["sources"]
      pkgshare.install Dir["themes"]
    end
  end

  test do
    system "bin/gbt", "-version"
  end
end
