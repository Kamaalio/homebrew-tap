class Xctools < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/f8/7d/8e97b0cc13c36701601fad39c0b4d16141b4a0d681eaf814493e63c05810/xctools_kamaalio-0.1.0.tar.gz"
  sha256 "04158d841e9d69a2508699fb661af0a7e9f6c1590d3f3a33dcc2891f1b7688aa"

  depends_on "python3"

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  resource "kamaalpy" do
    url "https://files.pythonhosted.org/packages/21/a8/50b26e66049b3fcae501299099539a806196d37b4e93fa4268f306818375/kamaalpy-0.1.0.tar.gz"
    sha256 "d1685e769deeecbf06ed9d8786a31b51fcf387e3ba97630e1b71f89a698edf3b"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
