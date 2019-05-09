#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

export EDITOR=nvim

alias e="$EDITOR"
alias ls='exa'
alias less='bat'
alias vim='nvim'
alias o='xdg-open'

function lastproc() {
    [ $? = '0' ] && echo 'ok' || echo 'nok'
}

function ds() {
  SCRIPTS=`ls ~/.dudoscript`
  [ $# -eq 0 ] && echo $SCRIPTS && return
  [ $1 == '-n' -a $# -eq 2 ] && touch ~/.dudoscript/$2 && chmod +x ~/.dudoscript/$2 && return
  [ $1 == '-e' -a $# -eq 2 ] && e ~/.dudoscript/$2 && return
  for ARG in $@; do
    [[ $SCRIPTS == *$ARG* ]] && ~/.dudoscript/$ARG || echo "Script '$ARG' does not exist"
  done
}

(automathemely -r 2>&1 > /dev/null &)

# ~/.term-color.sh

export PS1='`echo "\u@\h:\w:$(lastproc) ->" | litify` '
export PATH="$PATH":"$HOME/.scripts"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
