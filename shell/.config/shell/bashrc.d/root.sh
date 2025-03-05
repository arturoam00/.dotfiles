ROOT="~/.local/src/root/bin/thisroot.sh"
if [ -e "$(realpath "$ROOT")" ]; then
    source "$(realpath "$ROOT")"
fi

