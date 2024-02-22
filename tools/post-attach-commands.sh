#!/bin/bash
# NEOPHYTE Tutorial by mlewand69@gmail.com
# postAttachCommand

echo "===== INSTALL EXTENSIONS ..."
code --install-extension ms-python.python

echo "===== INSTALL MODULES ..."
pip install openai --upgrade
pip install ollama --upgrade
pip install litellm --upgrade

echo "===== INSTALL RC FILE ..."
[ ! -e ~/.neophyterc ] && cp .neophyterc ~/.neophyterc && echo "- RC FILE COPIED TO ~/.neophyterc"
grep --quiet ". ~/.neophyterc" < ~/.bashrc || echo "
# NEOPHYTE Tutorial environment update
. ~/.neophyterc
" >> ~/.bashrc

echo ""
echo "READY :-)"
