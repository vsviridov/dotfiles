#!/bin/bash

if command -v rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi

function dotfiles_install_rbenv {
    sudo apt install rbenv
}
