class Xctools < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/33/ee/085d53d2fc046a00ce7dfb1dec5cd976d3c219c543c32abcca739c507ebc/xctools_kamaalio-0.0.7.tar.gz"
  sha256 "f95626b2ecd098b15d40805916558bead377084b24872a07067a3131d6ee0c1f"

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
