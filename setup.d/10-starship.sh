#!/bin/bash

if ! command -v /usr/local/bin/starship > /dev/null; then
    curl -fsSL https://starship.rs/install.sh | bash
fi
