#!/bin/sh
# Initialise Git ignore.
# © 2013 Tom Vincent <http://tlvince.com/contact>

vendor=".gitdata/vendor/gitignore/Global"
cat $vendor/{Archives,SVN,Tags,macOS,vim}.gitignore > ".gitdata/gitignore"
