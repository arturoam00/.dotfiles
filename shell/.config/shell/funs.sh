addToPath() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$PATH:$1
    fi
}

addToPathFront() {
    if [[ "$PATH" != *"$1"* ]]; then
        export PATH=$1:$PATH
    fi
}

ssh_fzf() {
  local host
  host=$(awk '/^Host / {for (i=2; i<=NF; i++) if ($i != "*") print $i}' ~/.ssh/config | fzf --prompt="Select SSH host: ")

  if [[ -n "$host" ]]; then
    stty echo
    ssh "$host"
  else
    echo "No host selected."
  fi
}

export -f addToPath
export -f addToPathFront
export -f ssh_fzf
