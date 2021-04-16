#!/bin/bash

if [[ $SHELL =~ "bash" ]]; then
    SIGIL="# Managed by dotfiles"

    if ! grep "$SIGIL" ~/.bashrc > /dev/null; then
        (
        echo "$SIGIL"
        echo "for f in $DOTFILES/bash.d/*.sh; do source \"\$f\"; done"
        echo "unset f"
        ) >> ~/.bashrc
    fi
fi
