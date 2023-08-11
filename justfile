set export

XCTOOLS_FORMULA := "Formula/xctools.rb"

default:
  just --list

formulate:
    #!/bin/zsh

    . .venv/bin/activate
    poet -f xctools-kamaalio > $XCTOOLS_FORMULA
    xctools_formula=$(sed 's/XctoolsKamaalio/Xctools/g' $XCTOOLS_FORMULA)
    rm $XCTOOLS_FORMULA
    touch $XCTOOLS_FORMULA
    echo $xctools_formula >> $XCTOOLS_FORMULA

test-install:
    #!/bin/zsh

    export HOMEBREW_NO_INSTALL_FROM_API=1

    brew install --build-from-source --verbose --debug $XCTOOLS_FORMULA

init-venv:
    python3 -m venv .venv
    . .venv/bin/activate
    pip install -r requirements.txt
