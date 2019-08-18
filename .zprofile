#
# ~/.zprfile
#

[[ -f ~/.zshrc ]] && . ~/.zshrc

# autostart x at login
if [[ "$(tty)" == '/dev/tty1' ]]; then
    startx
fi
