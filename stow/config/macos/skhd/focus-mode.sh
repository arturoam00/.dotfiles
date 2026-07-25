#!/bin/sh

# Switch focus between the floating and tiled layers on the current space,
# matching Sway's `focus mode_toggle`.
focused="$(yabai -m query --windows --window 2>/dev/null)" || exit 0
floating="$(printf '%s' "$focused" | jq -r '."is-floating"')"
focused_id="$(printf '%s' "$focused" | jq -r '.id')"

if [ "$floating" = true ]; then
  target=false
else
  target=true
fi

target_id="$(yabai -m query --windows --space 2>/dev/null | jq -r \
  --argjson floating "$target" --argjson focused "$focused_id" \
  'map(select(."is-floating" == $floating
              and ."is-minimized" == false
              and .id != $focused))[0].id // empty')"

[ -n "$target_id" ] && yabai -m window "$target_id" --focus
