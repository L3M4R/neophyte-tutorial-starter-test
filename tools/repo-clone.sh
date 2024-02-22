#!/bin/bash
# NEOPHYTE Tutorial by mlewand69@gmail.com
set -euo pipefail

# GitHUB variables
CLONED_REPO_TOKEN=$1
CLONED_REPO_BRANCH=main
CLONED_REPO_NAME=LLM-hands-on-sa
CLONED_REPO_OWNER=L3M4R
CLONED_REPO_URL="https://$CLONED_REPO_TOKEN@github.com/$CLONED_REPO_OWNER/$CLONED_REPO_NAME.git"

# Codespace variables
REPO_HOME_FOLDER="$(ls -d /workspaces/* | head -1)"
REPO_FOLDER="$REPO_HOME_FOLDER/tutorial"

# clone and clean repository
cd "$REPO_HOME_FOLDER"
[ -d $REPO_FOLDER ] && echo "Skipped, destination folder ($REPO_FOLDER) exist" && exit 1
echo "INSTALL NEOPHYTE TUTORIAL REPO github.com/L3M4R/$CLONED_REPO_NAME ..."
echo ==============================================================================================
git clone "$CLONED_REPO_URL" "$REPO_FOLDER" -b "$CLONED_REPO_BRANCH"
rm -rf $REPO_FOLDER/.{git,gitignore,vscode} && echo "- EXTRA FILES CLEANED ..."

echo ==============================================================================================
du -sh $REPO_FOLDER
