#!/bin/bash

if ! test -x /usr/local/bin/starship; then
    curl -fsSL https://starship.rs/install.sh | bash  
fi

if ! grep starship ~/.bashrc > /dev/null; then
    echo "eval \"\$(starship init bash)\"" >> ~/.bashrc
fi
