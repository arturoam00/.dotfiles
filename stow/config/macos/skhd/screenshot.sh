#!/bin/sh

case "$1" in
  selection)
    file="$HOME/Pictures/Screenshots/Screenshot $(date '+%Y-%m-%d at %H.%M.%S').png"
    screencapture -i "$file"
    ;;
esac
