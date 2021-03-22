#!/bin/bash

if uname -r | grep WSL > /dev/null; then
    DISPLAY=$(ip route | awk '/^default/{print $3; exit}'):0

    export LIBGL_ALWAYS_INDIRECT=1
    export DISPLAY
fi
