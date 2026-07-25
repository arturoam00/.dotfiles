#!/bin/sh

count="$(system_profiler SPBluetoothDataType -json 2>/dev/null | jq -r \
  '(.SPBluetoothDataType[0].device_connected // []) | length' 2>/dev/null)"
case "$count" in
  ''|null) count=0 ;;
esac

sketchybar --set "$NAME" label="$count "
