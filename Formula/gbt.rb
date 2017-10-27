require "language/go"

class Gbt < Formula
  desc "Highly configurable prompt decoration for ZSH and Bash written in Go."
  homepage "https://github.com/jtyr/gbt"
  url "https://github.com/jtyr/gbt.git",
    :tag => "v1.0.0",
    :revision => "aca4c68b98f3b9a747ed719143fdf6a4bb02f489"
  head "https://github.com/jtyr/gbt.git"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    contents = buildpath.children - [buildpath/".brew_home"]
    (buildpath/"src/github.com/jtyr/gbt").install contents

    ENV.prepend_create_path "PATH", buildpath/"bin"

    Language::Go.stage_deps resources, buildpath/"src"

    cd "src/github.com/jtyr/gbt" do
      system "go", "build", "-o", bin/"gbt"
      pkgshare.install Dir["sources"]
      pkgshare.install Dir["themes"]
      man1.install "README.md"
      man1.install "LICENSE"
    end
  end

  test do
    system bin/"gbt", "-version"
  end
end
