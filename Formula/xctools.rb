class Xctools < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/42/ff/f9cb389978f263e935550bc06c59b69ddaacad30a79d8511a3d4bd925de0/xctools_kamaalio-0.0.8.tar.gz"
  sha256 "b0ccc4feb4693d1c3905de273f50bea1f9b6d8f98e9e15c473d01dfbf23bc5d3"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
