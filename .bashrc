# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt:
PS1='[\u@\h \W]\$ '

### Aliasy ###

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

#ls
alias l="ls -CF --color=auto"
alias la="ls -a --color=auto"
alias ll="ls -l --color=auto"
alias lla="ls -la --color=auto"

# docker
alias dpsimg='docker ps --format "table {{.Names}}\t{{.Image}}"'
alias dpsport='docker ps --format "table {{.Names}} \t {{.Ports}}"'
alias dc='docker-compose'

# git
alias gau='git add -u'
alias ga='git add .'
alias gb='git branch'
alias gco='git checkout'
alias gc='git clone'
alias gcm='git commit -m'
alias gf='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# neovim
alias vim='nvim'
alias vi='nvim'

# DEBIAN-based only
alias update='sudo apt update -y'
alias upgrade='sudo apt update && sudo apt upgrade -y'
alias autoremove='sudo apt autoremove'

# nowe
alias elo='echo "no elo"'

# doom emacs
alias doom='.emacs.d/bin/doom'

# starship.rs
eval "$(starship init bash)"
