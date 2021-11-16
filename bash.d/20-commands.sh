#!/bin/bash

function gr() {
    cd "$(git rev-parse --show-toplevel)" || return
}

function tdd() {
    set +e
    path=$1
    shift
    echo "Path: \"$path\""
    echo "Command: \"$@\""
    while [[ $? == 0 ]]
      inotifywait -r "$path" -e create -qq;
      eval "$@" 
    do echo $?; done;
}
