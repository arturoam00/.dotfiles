ROOT="$HOME/.local/src/root/bin/thisroot.sh"
if [ -f "$ROOT" ] || { [ -L "$ROOT" ] && [ -e "$ROOT" ]; }; then
    source "$ROOT"
fi
