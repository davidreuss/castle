#!/usr/bin/env bash

set -e

BUNDLES[0]="https://github.com/editorconfig/editorconfig-vim.git"
BUNDLES[1]="https://github.com/godlygeek/tabular.git"
BUNDLES[3]="https://github.com/scrooloose/syntastic.git"
BUNDLES[5]="https://github.com/2072/PHP-Indenting-for-VIm.git"
BUNDLES[6]="https://github.com/msanders/snipmate.vim.git"
BUNDLES[7]="https://github.com/ap/vim-css-color.git"
BUNDLES[8]="https://github.com/ervandew/supertab.git"
BUNDLES[10]="https://github.com/Lokaltog/vim-powerline.git"
BUNDLES[12]="https://github.com/altercation/vim-colors-solarized.git"
BUNDLES[13]="https://github.com/motemen/git-vim.git"

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
BUNDLES_DIR="$DIR/vim/bundle"

echo "> Trashing everything"

echo ">> Remove $BUNDLES_DIR"
rm -Rf $BUNDLES_DIR

echo ">> Recreate $BUNDLES_DIR"
mkdir $BUNDLES_DIR

echo ""

echo "> Installing bundles"
cd $BUNDLES_DIR
for bundle in ${BUNDLES[@]}; do
    echo ">> installing $bundle"
    git clone $bundle &>/dev/null
done;

cd $DIR
