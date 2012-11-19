#!/bin/sh
# Make a global git ignore.
# Copyright 2011-2012 Tom Vincent <http://tlvince.com/contact>

ignores="Archives Eclipse OSX SVN Windows"
url="https://raw.github.com/github/gitignore/master/Global"
out="$(git config --global core.excludesfile)"
out="${out/\~/$HOME}"
localIgnore="global.gitignore"

[ -f "$out" ] && rm "$out"

cat << EOF >> "$out"
# Global gitignore file. {{{1
# Copyright 2011-2012 Tom Vincent <http://tlvince.com/contact>
# vim: fdm=marker

EOF

for i in $ignores; do
    echo "# $i {{{1" >> "$out"
    curl -sS "$url/$i.gitignore" >> "$out"
    echo "" >> "$out"
done
cat "$localIgnore" >> "$out"
