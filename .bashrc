#
# ~/.bashrc
#

## exports
export PATH=$HOME/bin:/usr/local/bin:$HOME/.bin:$HOME/.scripts:$PATH

## set default editor
export EDITOR='nano'

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

## shell opts
shopt -s autocd
shopt -s cdspell
shopt -s cmdhist
shopt -s histappend
shopt -s expand_aliases

## colors in less
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

## prompt
export PS1=" \[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]➜\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

## alias
alias l='ls'
alias la='ls -A'
alias ll='ls -lA'
alias ls='ls --color=auto'
alias upd='sudo pacman -Syyu'
alias pac='sudo pacman --color auto'
alias yayu='yay -Syyu'
alias merge='xrdb -merge ~/.Xresources'
alias grubup='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias mirrors='sudo reflector --score 100 --fastest 25 \
    --sort rate --save /etc/pacman.d/mirrorlist --verbose'
alias dots='/usr/bin/git --git-dir=/home/christian/.dirty-dotfiles/ --work-tree=/home/christian'
