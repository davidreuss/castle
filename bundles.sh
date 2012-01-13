#!/usr/bin/env bash -e

BUNDLES[1]="git://github.com/godlygeek/tabular.git"
BUNDLES[2]="git://github.com/tpope/vim-markdown.git"
BUNDLES[3]="git://github.com/scrooloose/syntastic.git"
BUNDLES[4]="git://github.com/othree/html5.vim.git"
BUNDLES[5]="git://github.com/2072/PHP-Indenting-for-VIm.git"
BUNDLES[6]="https://github.com/rodjek/vim-puppet.git"
BUNDLES[7]="https://github.com/msanders/snipmate.vim.git"
BUNDLES[8]="https://github.com/jinfield/vim-nginx.git"
BUNDLES[9]="https://github.com/ap/vim-css-color.git"
BUNDLES[10]="https://github.com/ervandew/supertab.git"
BUNDLES[11]="https://github.com/kien/ctrlp.vim.git"
BUNDLES[12]="https://github.com/Lokaltog/vim-powerline.git"

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
