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
  local ssh_config="$HOME/.ssh/config"

  if [[ ! -f "$ssh_config" ]]; then
    echo "SSH config file not found at $ssh_config. Exiting."
    return 1
  fi

  local host
  host=$(awk '/^Host / {for (i=2; i<=NF; i++) if ($i != "*") print $i}' "$ssh_config" | fzf --prompt="Select SSH host: ")

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
