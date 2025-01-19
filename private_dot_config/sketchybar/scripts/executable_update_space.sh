#!/usr/bin/env bash

source $CONFIG_DIR/icon_map.sh

space_id=$1
space_color=$2

if [[ "$SENDER" == "forced" ]]; then
  space_item=(
    icon=$space_id
    icon.color=$space_color
    icon.highlight_color=0xff1e2030
    icon.padding_left=3
    icon.padding_right=3
    label.color=$space_color
    label.highlight_color=0xff1e2030
    label.font="sketchybar-app-font-bg:Regular:16.0"
    label.padding_left=0
    label.padding_right=1
    background.color=$space_color
    background.height=20
    background.corner_radius=5
    background.drawing=off
    padding_left=1
    padding_right=1
  )

  sketchybar --set $NAME "${space_item[@]}"
fi


if [[ "$SENDER" == "forced" || "$SENDER" == "space_windows_change" ]]; then
  app_ids=$(aerospace list-windows --workspace $space_id --format %{app-bundle-id} | awk '!a[$0]++' -)
  app_icons=$(for app_id in $app_ids; do
    echo "$(__icon_map "$app_id")"
  done)

  sketchybar --set $NAME label="$(echo $app_icons)"
fi


if [[ -n "$ACTIVE_WORKSPACE" ]]; then
  if [[ "$1" == "$ACTIVE_WORKSPACE" ]]; then
    sketchybar --set $NAME \
      icon.highlight=on \
      label.highlight=on \
      background.drawing=on
  else
    sketchybar --set $NAME \
      icon.highlight=off \
      label.highlight=off \
      background.drawing=off
  fi
fi

