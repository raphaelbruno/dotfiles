#!/bin/bash

TMP_DIR=/tmp/dotfies

rm -rf $TMP_DIR

git clone https://github.com/raphaelbruno/dotfiles.git $TMP_DIR

cp -R "$TMP_DIR/." "$HOME"

rm -rf ~/.git ~/install.sh ~/README.md