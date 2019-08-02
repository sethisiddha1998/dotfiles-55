#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# autostart x at login
if [[ "$(tty)" == '/dev/tty1' ]]; then
    startx
fi
