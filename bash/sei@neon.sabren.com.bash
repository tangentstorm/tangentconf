#!/bin/bash

# User specific environment and startup programs
export MAIL=
export MAILCHECK=999999999999
alias h="clear ; ~/bin/oldest.py -h"

PS1="$BLUE[$WHITE\w$BLUE]$RESET$CYAN:$RESET "
PATH=$HOME/bin:$HOME/sei/bin:$PATH
PYTHONPATH=.:~/lib/workshop/code:~/lib
LANG=en_US
