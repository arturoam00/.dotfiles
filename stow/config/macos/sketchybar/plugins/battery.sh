#!/bin/sh

battery="$(pmset -g batt)"
percentage="$(printf '%s\n' "$battery" | sed -nE 's/.*[[:space:]]([0-9]+)%.*/\1/p' | head -1)"
[ -z "$percentage" ] && exit 0

case "$battery" in
  *discharging*) icon="󰁹" ;;
  *)             icon="󰂄" ;;
esac

sketchybar --set "$NAME" label="${percentage}% $icon"
