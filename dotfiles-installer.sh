#! /bin/bash

DOTFILES_REPO=`dirname $0`

for dotfile in `ls $DOTFILES_REPO | egrep -v dotfiles-installer.sh\|README.md`
do
    ln -sf $DOTFILES_REPO/$dotfile ~/.$dotfile
done