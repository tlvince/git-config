#!/bin/sh
# Initialise Git.
# © 2013 Tom Vincent <http://tlvince.com/contact>

out="$HOME/.gitignore"
vendor="$XDG_DATA_HOME/git/vendor/gitignore/Global"

cat $vendor/{Archives,SVN,Tags,OSX}.gitignore > "$out"

[ -f "$HOME/.gitconfig" ] || \
  ln -s "$XDG_DATA_HOME/git/git.conf" "$HOME/.gitconfig"

[ -f "$HOME/.gitattributes" ] || \
  ln -s "$XDG_DATA_HOME/git/git.attributes" "$HOME/.gitattributes"
