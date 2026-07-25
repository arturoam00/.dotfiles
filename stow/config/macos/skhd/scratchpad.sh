#!/bin/sh

state="${TMPDIR:-/tmp}/sway-scratchpad-${USER}"

case "$1" in
  send)
    window="$(yabai -m query --windows --window 2>/dev/null)" || exit 0
    id="$(printf '%s' "$window" | jq -r '.id')"
    old_label="$(printf '%s' "$window" | jq -r '.scratchpad')"
    [ -n "$old_label" ] && [ "$old_label" != null ] && exit 0
    label="sway-$id"
    yabai -m window --scratchpad "$label" &&
      yabai -m window --toggle "$label" &&
      printf '%s\n' "$label" > "$state"
    ;;
  toggle)
    focused="$(yabai -m query --windows --window 2>/dev/null)"
    focused_label="$(printf '%s' "$focused" | jq -r '.scratchpad // empty')"

    # Sway hides the scratchpad again when its visible window is focused.
    if [ -n "$focused_label" ]; then
      yabai -m window --toggle "$focused_label" &&
        printf '%s\n' "$focused_label" > "$state"
      exit 0
    fi

    labels="$(yabai -m query --windows 2>/dev/null | jq -r \
      '[.[] | select((.scratchpad // "") | startswith("sway-"))] | sort_by(.id) | .[].scratchpad')"
    [ -z "$labels" ] && exit 0

    previous="$(sed -n '1p' "$state" 2>/dev/null)"
    next="$(printf '%s\n' "$labels" | awk -v previous="$previous" '
      NR == 1 { first = $0 }
      found { print; exit }
      $0 == previous { found = 1 }
      END { if (!found || NR == 1) print first }
    ')"
    [ -z "$next" ] && next="$(printf '%s\n' "$labels" | sed -n '1p')"
    yabai -m window --toggle "$next" && printf '%s\n' "$next" > "$state"
    ;;
esac
