#!/bin/sh

wifi_device="$(networksetup -listallhardwareports 2>/dev/null | awk '
  /Hardware Port: (Wi-Fi|AirPort)/ { wifi = 1; next }
  wifi && /Device:/ { print $2; exit }
')"

if [ -n "$wifi_device" ] && ipconfig getsummary "$wifi_device" 2>/dev/null | grep -q 'LinkStatusActive : TRUE'; then
  # macOS redacts SSIDs from background daemons without Location permission.
  label="Wi-Fi 󰖩"
elif scutil --nwi 2>/dev/null | grep -q '^Network interfaces:'; then
  label="Ethernet online 󰈀"
else
  label="󰖪"
fi

sketchybar --set "$NAME" label="$label"
