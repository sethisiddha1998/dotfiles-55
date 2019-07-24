#
# ~/.bashrc
#

# if not running interactively, don't do anything
[[ $- != *i* ]] && return

# paths
export PATH=$HOME/bin:/usr/local/bin:$HOME/.bin:$HOME/.scripts:$PATH

# completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion

# include fff config
if [ -f $HOME/.config/fff/config ]; then
    . $HOME/.config/fff/config
fi

# binds
bind Space:magic-space
bind "set completion-ignore-case on"
bind "set completion-map-case on"
bind "set show-all-if-ambiguous On"
bind "set mark-symlinked-directories on"
#bind '"\e[A": history-search-backward'
#bind '"\e[B": history-search-forward'
bind '"\e[C": forward-char'
bind '"\e[D": backward-char'

# defaults
export EDITOR="micro"
export TERMINAL="st"

# gpg pw on term
export GPG_TTY=$(tty)

# shell opts
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s histappend
shopt -s expand_aliases
shopt -s checkwinsize
shopt -s globstar 2> /dev/null
shopt -s nocaseglob;
shopt -s autocd 2> /dev/null
shopt -s dirspell 2> /dev/null
shopt -s cdspell 2> /dev/null

# colors in less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# history
HISTSIZE= 
HISTFILESIZE=
HISTCONTROL="erasedups:ignoredups:ignorespace"
PROMPT_COMMAND='history -a'
HISTTIMEFORMAT='%F %T '

# prompt
export PS1="\W \[$(tput setaf 4)\]➜  \[$(tput sgr0)\]"

# ow & tw dir color
export LS_COLORS="$LS_COLORS:ow=1;35:tw=1;35:"

# squash theming script
export PATH=~/.gitpkgs/squash:$PATH

# alias
alias e="$EDITOR"
alias sb="source ~/.bashrc"
alias la="ls -A"
alias ll="ls -lA"
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --colour=auto"
alias diff="diff --color=auto"
alias cp="cp -i"
alias df="df -h"
alias pac="sudo pacman --color=auto"
alias merge="xrdb -merge ~/.Xresources"
alias mirrors="sudo reflector --score 100 --fastest 25 \
    --sort rate --save /etc/pacman.d/mirrorlist --verbose"
alias temp="watch sensors"
alias dots='/usr/bin/git --git-dir=/home/crian/.dotfiles/ --work-tree=/home/crian'
