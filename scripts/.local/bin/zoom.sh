#!/bin/bash

MIN=0.5
MAX=3
STEP=0.05

current=$(gsettings get org.gnome.desktop.interface text-scaling-factor | tr -d "'")
new=$(echo "$current + $STEP * $1" | bc)

# Clamp the value between MIN and MAX
new=$(echo "if($new < $MIN) $MIN else if($new > $MAX) $MAX else $new" | bc)

gsettings set org.gnome.desktop.interface text-scaling-factor $new
