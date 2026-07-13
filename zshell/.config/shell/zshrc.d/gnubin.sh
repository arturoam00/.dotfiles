typeset -U path PATH

GNUBIN="/opt/homebrew/opt/coreutils/libexec/gnubin"

if [[ -d $GNUBIN ]]; then
    export PATH="$GNUBIN:$PATH"
fi
