#!/bin/bash

OLD_PWD=$PWD
timestamp=$(date '+%m%d%Y%H%M')

function finish {
    cd "$OLD_PWD" || exit;
}

trap finish EXIT

function overlay {
    local source="$1"
    local prefix="$2"

    cd "$source" || exit;

    find . -maxdepth 1 -type f -printf "%f\0" | while IFS= read -r -d $'\0' P; do
        local target="${prefix}/${P}"
        local backup="${prefix}/${P}.orig.${timestamp}"
        # echo "$PWD/$P" "->" "$target"

        # skip existing links
        if [ -h "$target" ]; then continue; fi


        # move existing dir out of the way
        if [ -e "$target" ]; then
            if [ -e "$backup" ]; then
                echo "want to override $target but backup exists"
                continue;
            fi

            echo -n "Backup ${P}"
            mv -v "$target" "$backup"
        fi

        # create link
        ln -v -s "$PWD/$P" "$target"

        # ensure permissions
        chmod -R o-rwx,g-rwx "$target"
    done

}

# From aaronjensen/dotfiles
DOTFILES=$( cd "$(dirname "${BASH_SOURCE[0]}")" && pwd || return)

overlay "$DOTFILES/dotfiles" "$HOME"
overlay "$DOTFILES/dotfiles/.config" "$HOME/.config"

# shellcheck source=/dev/null
for f in "$DOTFILES/setup.d/"*.sh; do source "$f"; done
unset f;
