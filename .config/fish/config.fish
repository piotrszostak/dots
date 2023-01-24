# ~/.config/fish/config.fish

### ADDING TO THE PATH
# First line removes the path; second line sets it.  Without the first line,
# your path gets massive and fish becomes very slow.
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type
#set EDITOR "emacsclient -t -a ''"                 # $EDITOR use Emacs in terminal
#set VISUAL "emacsclient -c -a emacs"              # $VISUAL use Emacs in GUI mode

### AUTOCOMPLETE AND HIGHLIGHT COLORS
set fish_color_normal brcyan
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brcyan
set fish_color_error '#ff6c6b'
set fish_color_param brcyan

# original config.fish content
if status is-interactive
    # Commands to run in interactive sessions can go here
end

### Dracula Color Palette ###
set -l foreground f8f8f2
set -l selection 44475a
set -l comment 6272a4
set -l red ff5555
set -l orange ffb86c
set -l yellow f1fa8c
set -l green 50fa7b
set -l purple bd93f9
set -l cyan 8be9fd
set -l pink ff79c6

# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
set -g fish_color_cancel $red --reverse
set -g fish_color_option $orange

# Default Prompt Colors
set -g fish_color_cwd $green
set -g fish_color_host $purple
set -g fish_color_host_remote $purple
set -g fish_color_user $cyan


# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_background
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
set -g fish_pager_color_selected_background --background=$selection
set -g fish_pager_color_selected_prefix $cyan
set -g fish_pager_color_selected_completion $foreground
set -g fish_pager_color_selected_description $comment
set -g fish_pager_color_secondary_background
set -g fish_pager_color_secondary_prefix $cyan
set -g fish_pager_color_secondary_completion $foreground
set -g fish_pager_color_secondary_description $comment

### Aliasy ###

## linux fs ##
# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

#cd
alias ..="cd .."
alias ...="cd ../.."

## apps ##
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
alias pull='git pull'
alias push='git push'
alias tag='git tag'
alias newtag='git tag -a'

# neovim & emacs
alias vim='nvim'
alias vi='nvim'
alias evim='emacs -nw'

### distro specyfic configuration (package managers)
# Arch-based only
# get fastest pacman mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# DEBIAN-based only
alias update='sudo apt update -y'
alias upgrade='sudo apt update && sudo apt upgrade -y'
alias autoremove='sudo apt autoremove'

# inne
alias elo='echo "no elo"'

alias syc='systemctl'
alias syd='systemd'

alias vpn='nmcli connection up'

# Cofig .cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
###config config --local status.showUntrackedFiles no
