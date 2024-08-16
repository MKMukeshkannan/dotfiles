#!/bin/bash

sketchybar --add item calender right \
           --set calender icon=􀉉  \
                          update_freq=30 \
                          script="$PLUGIN_DIR/calender.sh"
