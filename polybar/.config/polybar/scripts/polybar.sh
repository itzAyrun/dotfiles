#!/usr/bin/env sh

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        MONITOR=$m polybar --reload RoseBar &
    done
else
    polybar --reload RoseBar &
fi
