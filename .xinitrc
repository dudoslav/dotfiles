#!/bin/sh

logmic &
llk
setxkbmap -layout us,sk -option grp:win_space_toggle
xrdb -merge ~/.Xresources
xsetroot -solid "#c79081"
compton &
exec i3
