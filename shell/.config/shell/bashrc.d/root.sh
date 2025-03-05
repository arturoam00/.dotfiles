ROOT="~/.local/src/root/bin/thisroot.sh"
if [ -f "$(realpath "$ROOT")" ]; then
    source "$(realpath "$ROOT")"
fi

