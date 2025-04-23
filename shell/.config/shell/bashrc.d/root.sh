# Consider defining `ROOT_HOME` in either `.profile` or `.env` and 
# doing: ROOT_SH="$ROOT_HOME/bin/thisroot.sh" instead.
ROOT_SH="$HOME/.local/src/root/bin/thisroot.sh"
if [ -f "$ROOT_SH" ] || { [ -L "$ROOT_SH" ] && [ -e "$ROOT_SH" ]; }; then
    source "$ROOT_SH"
fi
