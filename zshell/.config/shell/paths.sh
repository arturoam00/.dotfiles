[[ -d "$HOME/.local/bin" ]] && {
  addToPathFront "$HOME/.local/bin"
  addToPath "$(find "$HOME/.local/bin" -type d | paste -sd ':' -)"
}


