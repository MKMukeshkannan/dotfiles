#!/bin/bash

sketchybar --add item clock right \
           --set clock icon=􀐬  \
                          background.color=$ACCENT_COLOR \
                          background.corner_radius=20 \
                          padding_left=0  \
                          padding_right=0 \
                          background.height=25 \
                          update_freq=30 \
                          script="$PLUGIN_DIR/clock.sh" \
                          icon.padding_left=20 \
                          label.padding_right=20 \
