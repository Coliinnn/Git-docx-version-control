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

HOOK_PATH="../.git/hooks"
echo $HOOK_PATH
mkdir $HOOK_PATH
cp post-commit.sh $HOOK_PATH/post-commit
cp pre-commit.sh $HOOK_PATH/pre-commit
chmod u+x $HOOK_PATH/post-commit
chmod u+x $HOOK_PATH/pre-commit