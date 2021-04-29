#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! command -v brew > /dev/null; then
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi
fi
