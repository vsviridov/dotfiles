#!/bin/bash

PROMPT_SUBMODULE="${SUBMODULES}/romkatv-gitstatus"

if ls -A "$PROMPT_SUBMODULE"; then
    git submodule init
    git submodule update
fi

# shellcheck disable=SC1090
source "$PROMPT_SUBMODULE/gitstatus.prompt.sh"
