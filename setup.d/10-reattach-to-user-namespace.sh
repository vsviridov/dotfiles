#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! command -v reattach-to-user-namespace > /dev/null; then
        brew install reattach-to-user-namespace
    fi
fi
