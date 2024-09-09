sketchybar --add event aerospace_workspace_change


for sid in $(aerospace list-workspaces --all); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        icon.color=$BAR_COLOR \
        icon.padding_left=0 \
        click_script="aerospace workspace $sid" \
        script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done

sketchybar --add bracket spaces '/space\..*/' \
           --set spaces background.color=0xffffffff \
                 background.corner_radius=20  \
                 padding_left=0  \
                 padding_right=0 \
                 background.height=20 \


