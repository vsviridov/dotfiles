#!/bin/bash

if ! test -d ~/.asdf; then
    echo "Cloning asdf-vm"
    git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0
fi


