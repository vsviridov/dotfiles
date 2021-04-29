#!/bin/bash

if ! command -v shellcheck > /dev/null; then
    did_install=0
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt update > /dev/null && sudo apt install shellcheck > /dev/null;
        did_install=1
    elif [[ "$OSTYPE" == "darwin"* ]]; then
        brew install shellcheck
        did_install=1
    fi

    if [[ "$did_install" == 1 ]]; then
        echo "Installed Shellcheck"
    else
        echo "Did NOT install Shellcheck"
    fi
fi
