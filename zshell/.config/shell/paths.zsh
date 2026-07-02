typeset -U path PATH

if [[ -d "$HOME/.local/bin" ]]; then
    path=("$HOME/.local/bin" "${path[@]}")

    while IFS= read -r -d '' dir; do
        path+=("$dir")
    done < <(find "$HOME/.local/bin" -type d -print0)
fi
