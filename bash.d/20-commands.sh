#!/bin/bash

function gr() {
    cd "$(git rev-parse --show-toplevel)" || return
}
