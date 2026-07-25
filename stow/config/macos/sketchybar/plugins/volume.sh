#!/bin/sh

if [ "$SENDER" = volume_change ] && [ -n "$INFO" ]; then
  volume="$INFO"
else
  volume="$(osascript -e 'output volume of (get volume settings)' 2>/dev/null)"
fi
muted="$(osascript -e 'output muted of (get volume settings)' 2>/dev/null)"

if [ "$muted" = true ] || [ "${volume:-0}" -eq 0 ] 2>/dev/null; then
  icon="󰖁"
else
  icon="󰕾"
fi

sketchybar --set "$NAME" icon="$icon"
