class Xctools < Formula
  include Language::Python::Virtualenv

  desc "Shiny new formula"
  homepage ""
  url "https://files.pythonhosted.org/packages/46/ba/9b1d79ad4ccc8d78061680a68b70841afe9a74db31df8a8c4d33b27ed109/xctools_kamaalio-0.2.0.tar.gz"
  sha256 "6d8c7fde3c95068470a4f9ed28f2e207b56729b20eca9371deb902bef8392bb4"

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
