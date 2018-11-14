#
# ~/.bashrc
#

## exports
export PATH=$HOME/bin:/usr/local/bin:$HOME/.bin:$HOME/.scripts:$PATH

## set default editor
export EDITOR='nano'

## If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

## prompt
export PS1=" \[$(tput sgr0)\]\[\033[38;5;12m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;11m\]➜\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

## merge Xresources, useful for urxvt & rofi theming
alias merge="xrdb -merge ~/.Xresources"

## dotfiles
alias dots='/usr/bin/git --git-dir=/home/christian/.dirty-dotfiles/ --work-tree=/home/christian'
