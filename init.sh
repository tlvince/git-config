#!/bin/sh
# Initialise Git.
# © 2013 Tom Vincent <http://tlvince.com/contact>

out="$HOME/.gitignore"
vendor="$XDG_CONFIG_HOME/git/vendor/gitignore/Global"

cat $vendor/{Archives,SVN,Linux,Tags,OSX}.gitignore > "$out"

[ -f "$HOME/.gitconfig" ] || \
  ln -s "$XDG_CONFIG_HOME/git/git.conf" "$HOME/.gitconfig"
