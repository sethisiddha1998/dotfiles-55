#! /bin/bash

/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
compton --config ~/.config/compton.conf &
nitrogen --restore &
#hsetroot -add '#161821' -add '#6b7089' -gradient -45 &
nm-applet &
dunst &
~/.config/cwm/lemonbar/bar &
