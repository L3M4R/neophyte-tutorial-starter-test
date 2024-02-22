#!/bin/bash
# NEOPHYTE Tutorial by mlewand69@gmail.com
# postAttachCommand

echo "===== INSTALL EXTENSIONS ..."
code --install-extension ms-python.python

echo "===== INSTALL MODULES ..."
pip install openai --upgrade
pip install ollama --upgrade
pip install litellm --upgrade

echo ""
echo "READY :-)"
