#!/bin/bash

# shellcheck disable=SC2034
DOTFILES=$( cd "$(dirname "${BASH_SOURCE[0]}")"/.. && pwd || return)

SUBMODULES=$( cd "$DOTFILES/submodules" && pwd)
