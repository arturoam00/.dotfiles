: "${CARGO_HOME:=$HOME/.cargo}"
export CARGO_HOME

if [ -f "$CARGO_HOME/env" ]; then
    path_prepend "$CARGO_HOME/bin"
fi

