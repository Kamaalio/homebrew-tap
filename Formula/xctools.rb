class Xctools < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage "None"
  url "https://files.pythonhosted.org/packages/a7/5e/56d28c17d302b1d5ed1eb77c6770b8d17a026a5a35ea486b06deffc8d972/xctools_kamaalio-0.4.0.tar.gz"
  sha256 "41c3423e6356afb6973a683c7e43ab7faa6c9406ba724aae9b6f51450741e8a3"

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
