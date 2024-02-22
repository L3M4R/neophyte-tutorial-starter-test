#!/bin/bash
# postAttachCommand

echo "INSTALL EXTENSIONS ..."
code --install-extension ms-python.python

echo "INSTALL MODULES ..."
pip install openai --upgrade
pip install ollama --upgrade
pip install litellm --upgrade

echo "READY :-)"
