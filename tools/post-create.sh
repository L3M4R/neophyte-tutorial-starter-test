#!/bin/bash
# NEOPHYTE Tutorial by mlewand69@gmail.com
# postCreateCommand (after container creation)

echo "===== INSTALL MODULES ..."
pip install openai
pip install ollama
pip install litellm

echo "===== INSTALL ENVIRONMENT FILE ..."
[ ! -e ~/.neophyterc ] && mv .neophyterc ~/.neophyterc && echo "- RC FILE MOVED TO ~/.neophyterc"
grep --quiet ". ~/.neophyterc" < ~/.bashrc || echo "
# NEOPHYTE Tutorial environment update
. ~/.neophyterc
" >> ~/.bashrc

