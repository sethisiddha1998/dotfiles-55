#! /bin/bash

~/.config/dwm/bar &
xrdb -load ~/.Xresources &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
compton --config ~/.config/compton.conf &
nitrogen --restore &
#hsetroot -fill $HOME/.wall/wallhaven-4xwq23.jpg -tint "#5e81ac" -brightness 0.2
nm-applet &
dunst &
