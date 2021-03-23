#!/bin/bash

if ! command -v shellcheck > /dev/null; then
    sudo apt update > /dev/null && sudo apt install shellcheck > /dev/null;
    echo "Installed Shellcheck"
fi
