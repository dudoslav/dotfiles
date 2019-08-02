#!/bin/sh

logmic &
llk
setxkbmap -layout us,sk -option grp:win_space_toggle
xrdb -merge ~/.Xresources
# feh --bg-scale ~/Pictures/hong-kong-minimal-4k-90-1920x1080.jpg
xsetroot -solid "#c79081"
compton &
exec i3
