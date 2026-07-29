if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"

  brew() {
    command brew "$@"
    local result=$?
  
    if (( result == 0 )); then
      case "$1" in
        install|uninstall|remove|rm|reinstall|tap|untap)
          command brew bundle dump --global --force
          ;;
      esac
    fi
  
    return $result
  }

fi

