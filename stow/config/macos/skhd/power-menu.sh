#!/bin/sh

# Keep the dialog and the selected action in one AppleScript process. Cancel is
# deliberately the default so an accidental Return cannot restart the Mac.
osascript <<'APPLESCRIPT'
tell application "System Events"
  activate

  set choice to button returned of (display dialog "Wanna go?" ¬
    with title "Power" ¬
    buttons {"Shut Down", "Restart", "Cancel"} ¬
    default button "Cancel" ¬
    cancel button "Cancel" ¬
    with icon caution)

  if choice is "Restart" then
    restart
  else if choice is "Shut Down" then
    shut down
  end if
end tell
APPLESCRIPT
