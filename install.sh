#!/usr/bin/env bash

set -e

dotfiles=( "vim" "vimrc" "gvimrc" "inputrc" "zsh" "zshenv" "zshrc" "editorconfig" )

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "> Update submodules"
git submodule sync &>/dev/null
git submodule update --init &>/dev/null

echo ""

echo "> Installing dotfiles"
for dotfile in ${dotfiles[@]};do
    source="$DIR/$dotfile"
    destination="$HOME/.$dotfile"

    echo ">> Installing $source as $destination"
    if [ ! -f $destination ] && [ ! -d $destination ]; then
        ln -s ${source} ${destination}
    fi
done;

mkdir "$DIR/vim/bundle" &>/dev/null

echo ""

$DIR/bundles.sh
