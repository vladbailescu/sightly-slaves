#!/bin/sh
set -ex
wget https://sourceforge.net/projects/gitslave/files/gitslave-2.0.2.tar.gz
tar -xzvf gitslave-2.0.2.tar.gz
cd gitslave-2.0.2
sed 's/pod2man/pod2man --name gits/' -i Makefile
make && sudo make install
