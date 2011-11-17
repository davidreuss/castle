#!/usr/bin/env bash

dotfiles=( "vim" "vimrc" "gvimrc" "inputrc" "zsh" "zshenv" "zshrc" )

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "> Installing dotfiles"

for dotfile in ${dotfiles[@]};do
    source="$DIR/$dotfile"
    destination="$HOME/.$dotfile"

    if [ ! -f $destination ] && [ ! -d $destination ]; then
        echo ">> Installing $source as $destination"
        ln -s ${source} ${destination}
    fi
done;

mkdir "$DIR/vim/bundle" &>/dev/null

echo ""

$DIR/bundles.sh
