#!/bin/bash

# CHANGE DEFAULT SHELL TO BASH
# chsh -s /bin/bash

# echo "!!! NOTE: RUN THIS SCRIPT FROM THE SETUP FOLDER IN WHICH IT IS LOCATED"

# INSTALL AND UPDATE BREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew --version

# INSTALL GIT
brew install git
git --version

# INSTALL PANDOC
brew install pandoc
pandoc --version

HOOK_PATH_GIT="../.git"
echo $HOOK_PATH_GIT
HOOK_PATH_HOOKS="../.git/hooks"
echo $HOOK_PATH_HOOKS
mkdir $HOOK_PATH_GIT
mkdir $HOOK_PATH_HOOKS
cp post-commit.sh $HOOK_PATH_HOOKS/post-commit
cp pre-commit.sh $HOOK_PATH_HOOKS/pre-commit
chmod u+x $HOOK_PATH_HOOKS/post-commit
chmod u+x $HOOK_PATH_HOOKS/pre-commit
