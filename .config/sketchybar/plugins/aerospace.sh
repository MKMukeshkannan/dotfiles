#!/usr/bin/env bash

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
    sketchybar --set $NAME icon.color=0xffE42C03 icon="" background.drawing=on
else
    sketchybar --set $NAME icon.color=0xff272727 icon="" background.drawing=off
fi
