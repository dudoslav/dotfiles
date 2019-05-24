#!/bin/bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$(du "$HOME/.scripts/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR=nvim
export BROWSER=firefox


[ -f ~/.bashrc ] && source "$HOME/.bashrc"
