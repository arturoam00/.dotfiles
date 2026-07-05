typeset -U path PATH

: "${CARGO_HOME:=$HOME/.cargo}"   # fall back to cargo's default install location

if [[ -f "$CARGO_HOME/env" ]]; then
    # Prepend so a system-installed rustc gets overridden.
    # typeset -U above keeps PATH deduped, so no need to check for it first.
    export PATH="$CARGO_HOME/bin:$PATH"
fi
