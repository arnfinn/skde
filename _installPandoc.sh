#!/usr/bin/env bash

mkdir ~/pandoc
wget https://github.com/jgm/pandoc/releases/download/1.19.2.1/pandoc-1.19.2.1-1-amd64.deb
dpkg --extract pandoc-1.19.2.1-1-amd64.deb ~/pandoc/1.19
export PATH=~/pandoc/1.19/usr/bin/:$PATH

echo $PANDOC
type -p pandoc
pandoc --version

