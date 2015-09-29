#!/bin/bash

# User specific environment and startup programs
export MAIL=
export MAILCHECK=999999999999
alias h="clear ; ~/bin/oldest.py -h"

PS1="$BLUE[$WHITE\w$BLUE]$RESET$CYAN:$RESET "
PATH=$HOME/bin:$HOME/sei/bin:$PATH

export PYTHONPATH=.:~/lib/workshop/code:~/lib
alias emacs='/usr/local/bin/emacsclient -nw -a ~/bin/emacs'
