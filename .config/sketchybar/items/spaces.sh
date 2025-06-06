#!/bin/bash

SPACE_SIDS=(
	[1]="􀎞"
	[2]="􀱮"
	[5]="􀑬"
	[6]="􀩼"
	[7]="􀤆")

for sid in {1..7}
do
  label="${SPACE_SIDS[$sid]:-${sid}}${SPACE_SIDS[$sid]+:}"
  sketchybar --add space space.$sid left									\
             --set space.$sid space=$sid									\
                              icon="$label"									\
                              label.font="sketchybar-app-font:Regular:16.0"	\
                              label.padding_right=15						\
                              label.y_offset=-1								\
                              script="$PLUGIN_DIR/space.sh"              
done

sketchybar --add item space_separator left								\
           --set space_separator icon="􀆊"								\
                                 icon.color=$ACCENT_COLOR				\
                                 icon.padding_left=4					\
                                 label.drawing=off						\
                                 background.drawing=off					\
                                 script="$PLUGIN_DIR/space_windows.sh"	\
           --subscribe space_separator space_windows_change

