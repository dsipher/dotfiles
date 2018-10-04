#!/bin/bash
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xhost +local:
xrandr --dpi 96
exec dwm
