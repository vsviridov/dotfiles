#!/bin/bash

export PATH="./node_modules/.bin;$PATH"

if [ -e "$HOME/.cargo/bin" ]; then
    export PATH="$HOME/.cargo/bin;$PATH"
fi
