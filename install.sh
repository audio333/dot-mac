#!/usr/bin/env bash
############################
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
# And also installs Homebrew Packages
# And sets Sublime preferences
############################

#if [ "$#" -ne 1 ]; then
#    echo "Usage: install.sh <home_directory>"
#    exit 1
#fi

# dotfiles directory
dotfiledir=~/dot-mac

# list of files/folders to symlink in home directory
files="skhdrc yabairc"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd ${dotfiledir}
echo "...done"

# create symlinks (will overwrite old dotfiles)
for file in ${files}; do
    echo "Creating symlink to $file in home directory."
    ln -s ${dotfiledir}/.${file} ~/.${file}
done

# Download Git Auto-Completion
# curl "https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash" > ~/.git-completion.bash

# Run the Homebrew Script
./brew.sh

# Run the Sublime Script
./sublime.sh
