class Pbt < Formula
  desc "Highly configurable prompt decoration for ZSH and Bash written in Python."
  homepage "https://github.com/jtyr/pbt"
  url "https://github.com/jtyr/pbt/archive/v1.0.9.tar.gz"
  sha256 "a2eaef5a49ce6b4418ad8f7ff419fc16375c97a9759664350d4bbd4eed113962"

  depends_on :python if MacOS.version <= :snow_leopard

  def install
    ENV.prepend_create_path "PYTHONPATH", lib/"python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(prefix)
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => lib/"python2.7/site-packages")
  end

  test do
    ENV.prepend_create_path "PYTHONPATH", lib/"python2.7/site-packages"
    system "#{bin}/pbt" "--version"
  end
end
