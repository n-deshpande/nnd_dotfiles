#!/bin/bash

# take a screenshot
scrot /tmp/lock_screen.png

# add some blur
convert /tmp/lock_screen.png -paint 1 -blur 0x10 /tmp/lock_screen.png

composite -gravity center /home/n/.config/i3lock/pad.png /tmp/lock_screen.png /tmp/lock_screen.png
# start i3lock
i3lock -i /tmp/lock_screen.png

# turn off screen after 20s
sleep 20 && pgrep i3lock && xset dpms force off
