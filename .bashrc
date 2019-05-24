#!/bin/bash
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"

function lastproc() {
    [ $? = '0' ] && echo 'ok' || echo 'nok'
}

dnmode

export PS1='`echo "\u@\h:\w:$(lastproc) ->" | litify` '

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
