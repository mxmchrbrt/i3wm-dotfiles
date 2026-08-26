# ---------- history that doesn't suck ----------
HISTSIZE=100000
HISTFILESIZE=200000
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend cmdhist autocd cdspell checkwinsize globstar

# type "gcc" then press Up -> cycles only through your gcc commands
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# ---------- colors & aliases ----------
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'
alias v='vim'

# ---------- prompt ----------
__git_branch() {
  local b
  b=$(git branch --show-current 2>/dev/null) || return
  [ -n "$b" ] && printf '  %s' "$b"
}

__set_prompt() {
  local last=$?
  local r='\[\e[0m\]'
  local blue='\[\e[38;2;137;180;250m\]'
  local mauve='\[\e[38;2;203;166;247m\]'
  local grey='\[\e[90m\]'    # bright black
  local fg='\[\e[37m\]'      # white
  local green='\[\e[32m\]'
  local red='\[\e[31m\]'
  local arrow
  [ "$last" -eq 0 ] && arrow="${green}❯" || arrow="${red}❯"
  PS1="\n${blue}\w${mauve}$(__git_branch)${r}\n${arrow} ${r}"
}
PROMPT_COMMAND=__set_prompt
