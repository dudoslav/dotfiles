#!/bin/bash

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

function lastproc() {
    [ $? = '0' ] && echo 'ok' || echo 'nok'
}

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  export PS1="\u@\h:\w:$(lastproc) -> "
else
  # export PS1='`echo "\u@\h:\w:$(lastproc) ->" | litify` '
  export PS1="\[$(tput bold)\]\[\033[38;5;161m\]\w\[$(tput sgr0)\] "
fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"

export TERM=xterm-256color
