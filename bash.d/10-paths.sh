#!/bin/bash

export PATH="./node_modules/.bin:$PATH"

if [ -e "$HOME/.cargo/bin" ]; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -e "$HOME/.bin" ]; then
    export PATH="$HOME/.bin:$PATH"
fi

if [ -w "$HOME/go/bin" ]; then
    export PATH="$HOME/go/bin:$PATH"
fi
