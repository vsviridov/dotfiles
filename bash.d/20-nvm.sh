#!/bin/bash

if test -d ~/.nvm; then
    NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
    export NVM_DIR
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
fi

function dotfiles_install_nvm() {
    git clone git@github.com:nvm-sh/nvm.git ~/.nvm
}
