#!/usr/bin/env bash

source "$CONFIG_DIR/icon_map.sh"

space_highlight=$(sketchybar --query "$NAME" | jq -r ".icon.highlight")
if [[ 
  "$SENDER" == "forced" ||
  "$SENDER" == "space_windows_change" ||
  "$SENDER" == "aerospace_moved_node_to_workspace" && "$TARGET_WORKSPACE" == "$1" ||
  "$SENDER" == "aerospace_moved_node_to_workspace" && "$space_highlight" == "on" ]]; then
  app_ids=$(aerospace list-windows --workspace "$1" --format "%{app-bundle-id}" | awk '!a[$0]++' -)
  app_icons=$(for app_id in $app_ids; do __icon_map "$app_id"; done)
  sketchybar --set "$NAME" label="$(echo $app_icons)"
fi

if [[ -n "$ACTIVE_WORKSPACE" ]]; then
  if [[ "$1" == "$ACTIVE_WORKSPACE" ]]; then
    sketchybar --set "$NAME" \
      icon.highlight=on \
      label.highlight=on \
      background.drawing=on
  else
    sketchybar --set "$NAME" \
      icon.highlight=off \
      label.highlight=off \
      background.drawing=off
  fi
fi

if [[ "$SENDER" == "display_change" ]]; then
  for space_info_str in $(aerospace list-workspaces --all --format "%{monitor-appkit-nsscreen-screens-id}:%{workspace}"); do
    IFS=":" read -r -a space_info_arr <<<"$space_info_str"
    space_monitor=${space_info_arr[0]}
    space_id=${space_info_arr[1]}
    if [[ "$1" == "$space_id" ]]; then
      sketchybar --set "$NAME" display="$space_monitor"
    fi
  done
fi
