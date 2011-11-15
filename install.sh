#!/usr/bin/env bash

dotfiles=( "vim" "vimrc" "gvimrc" "inputrc" "zsh" "zshenv" "zshrc" )

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for dotfile in ${dotfiles[@]};do
    source="$DIR/$dotfile"
    destination="$HOME/.$dotfile"

    if [ ! -f $destination ] && [ ! -d $destination ]; then
        echo "> Installing $source as $destination"
        ln -s ${source} ${destination}
    else
        echo "> $destination already exists"
    fi
done;
