class Xctools < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "None"
  url "https://files.pythonhosted.org/packages/12/67/60be1707053284db4641237efdc823b68322e97e230bc2ccdbbeb0aa1b0d/xctools_kamaalio-0.5.1.tar.gz"
  sha256 "b070d6c08b4c996bd67c9bacd8947effb1b5e71ec970d50eaa1e17aae984d46a"

  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/72/bd/fedc277e7351917b6c4e0ac751853a97af261278a4c7808babafa8ef2120/click-8.1.6.tar.gz"
    sha256 "48ee849951919527a045bfe3bf7baa8a959c423134e1a5b98c05c20ba75a1cbd"
  end

  resource "kamaalpy" do
    url "https://files.pythonhosted.org/packages/21/a8/50b26e66049b3fcae501299099539a806196d37b4e93fa4268f306818375/kamaalpy-0.1.0.tar.gz"
    sha256 "d1685e769deeecbf06ed9d8786a31b51fcf387e3ba97630e1b71f89a698edf3b"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"xctools", "--help"
  end
end
