#!/bin/sh

# macOS has no independent input-mute flag; input volume 0 is its mute state.
volume="$(osascript -e 'input volume of (get volume settings)' 2>/dev/null)"
if [ "${volume:-0}" -eq 0 ] 2>/dev/null; then
  icon=""
else
  icon=""
fi

sketchybar --set "$NAME" icon="$icon"
