#!/bin/bash

sketchybar --add item media center \
           --set media label.color=$THIRD_COLOR \
                       background.corner_radius=0 \
                       background.height=28 \
                       label.max_chars=20 \
                       label.padding_right=10 \
                       icon.padding_left=10 \
                       icon=􀑪             \
                       icon.color=$THIRD_COLOR   \
                       background.color=$ACCENT_COLOR \
                       scroll_texts=on \
                       script="$PLUGIN_DIR/media.sh" \
           --subscribe media media_change
