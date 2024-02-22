#!/bin/bash
# NEOPHYTE Tutorial by mlewand69@gmail.com
# postCreateCommand"

touch neophyte.creating

echo "===== INSTALL ENVIRONMENT FILE ..."
[ ! -e ~/.neophyterc ] && cp .neophyterc ~/.neophyterc && echo "- RC FILE COPIED TO ~/.neophyterc"
grep --quiet ". ~/.neophyterc" < ~/.bashrc || echo "
# NEOPHYTE Tutorial environment update
. ~/.neophyterc
" >> ~/.bashrc

echo "===== INSTALL MODULES ..."
pip install openai
pip install ollama
pip install litellm

touch neophyte.ready
