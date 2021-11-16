#!/bin/bash

DOTFILES=$( cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd || return)
GITCONFIG="${DOTFILES}/bash.d/10-gitconfig.local.sh"

if [[ -z "${GIT_AUTHOR_NAME}" ]]; then
   read -p 'Git Author Name: ' GIT_AUTHOR_NAME
fi

if [[ -z "${GIT_AUTHOR_EMAIL}" ]]; then
   read -p 'Git Author Email: ' GIT_AUTHOR_EMAIL
fi

cat > "$GITCONFIG" <<EOL
#!/bin/bash
export GIT_AUTHOR_NAME="${GIT_AUTHOR_NAME}"
export GIT_AUTHOR_EMAIL="${GIT_AUTHOR_EMAIL}"
EOL

unset GIT_AUTHOR_NAME
unset GIT_AUTHOR_EMAIL
