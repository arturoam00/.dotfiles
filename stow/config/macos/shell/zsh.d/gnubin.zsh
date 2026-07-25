typeset -U path PATH

GNUBIN="/opt/homebrew/opt/coreutils/libexec/gnubin"
GNUFIND="/opt/homebrew/opt/findutils/libexec/gnubin"

if [[ -d $GNUBIN ]]; then
    export PATH="$GNUBIN:$PATH"
fi

if [[ -d $GNUFIND ]]; then
    export PATH="$GNUFIND:$PATH"
fi
