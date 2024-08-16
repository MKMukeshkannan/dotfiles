#!/bin/bash

sketchybar --add item front_app left \
           --set front_app       icon.font="sketchybar-app-font:Regular:10.0" \
                                 script="$PLUGIN_DIR/active_app.sh"            \
           --subscribe front_app front_app_switched
