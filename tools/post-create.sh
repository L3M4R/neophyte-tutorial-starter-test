#!/bin/bash
# NEOPHYTE Tutorial by mlewand69@gmail.com
# postCreateCommand"

echo "===== INSTALL RC FILE ..."
[ ! -e ~/.neophyterc ] && cp .neophyterc ~/.neophyterc && echo "- RC FILE COPIED TO ~/.neophyterc"
grep --quiet ". ~/.neophyterc" < ~/.bashrc || echo "
# NEOPHYTE Tutorial environment update
export PATH=$PATH:/home/codespace/tools
. ~/.neophyterc
" >> ~/.bashrc
