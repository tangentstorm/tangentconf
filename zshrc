export PATH=~/bin:$PATH
export PATH=~/.npm-global/bin:$PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/opt/mysql-client@8.0/bin:$PATH"
alias gs="git status"
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gp='git push'
alias gs='git status'

alias ll='ls -l'
alias ls='ls -F --color'

alias wsc="sed -i '' -e 's/[[:blank:]]*\$//'"

export GEMINI_API_KEY=`cat ~/.gemini.key`
export OPENAI_API_KEY=`cat ~/.openai.key`

# Stylish Git-aware ZSH prompt
# Colors
CYAN="%F{cyan}"
BRIGHT_CYAN="%F{14}"
BRIGHT_BLUE="%F{12}"
BRIGHT_WHITE="%F{15}"
DARK_BLUE="%F{4}"
RESET="%f"

# Function to get git branch
git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  if [[ -n $branch ]]; then
    echo "$branch"
  fi
}

# Set the prompt
setopt PROMPT_SUBST
PROMPT='${VIRTUAL_ENV_PROMPT:+"$DARK_BLUE($RESET$CYAN$VIRTUAL_ENV_PROMPT$DARK_BLUE)$RESET "}${CYAN}%~${RESET}
${BRIGHT_CYAN}$(git_branch)${RESET}${BRIGHT_BLUE}>${RESET}${BRIGHT_WHITE} '

# Reset color after command execution
preexec() {
  echo -ne "\e[0m"
}


# J language interceptor using ZLE
j-line-intercept() {
  local cmd="$BUFFER"
  if [[ "$cmd" = "j "* ]]; then
    local j_code="${cmd#j }"
    BUFFER=""
    zle accept-line
    print -s "j $j_code"
    preexec # <- defined earlier to reset color
    echo "\n\n   $j_code"
    echo "$j_code" | /Applications/j9.4/bin/jconsole
  else
    zle .accept-line
  fi
}

# Create the ZLE widget
zle -N accept-line j-line-intercept

# Plain function for when j is called directly
j() {
  if [ $# -eq 0 ]; then
    # If no arguments, just run interactive jconsole
    /Applications/j9.4/bin/jconsole
  else
    echo -ne "\e[0m"
    echo "\n\n   $*"
    echo "$*" | /Applications/j9.4/bin/jconsole
  fi
}
