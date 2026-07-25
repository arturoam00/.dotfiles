#!/bin/sh

if [ "$SELECTED" = true ]; then
  sketchybar --set "$NAME" \
    icon.color=0xffffffff \
    background.color=0xff285577 \
    background.drawing=on
else
  sketchybar --set "$NAME" \
    icon.color=0xff5c5c5c \
    background.color=0xff323232 \
    background.drawing=on
fi
