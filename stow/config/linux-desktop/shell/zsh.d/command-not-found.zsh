command_not_found_handler() {
    local command_name="$1"
    local purple='\e[1;35m' bright='\e[0;1m' green='\e[1;32m' reset='\e[0m'

    printf 'zsh: command not found: %s\n' "$command_name"
    [[ -x /usr/bin/pacman ]] || return 127

    local entries=(
        ${(f)"$(/usr/bin/pacman -F --machinereadable -- "/usr/bin/$command_name")"}
    )
    (( ${#entries[@]} )) || return 127

    printf "${bright}%s${reset} may be found in the following packages:\n" "$command_name"
    local entry pkg
    for entry in "${entries[@]}"; do
        local fields=(${(0)entry})
        if [[ "$pkg" != "${fields[2]}" ]]; then
            printf "${purple}%s/${bright}%s ${green}%s${reset}\n" \
                "${fields[1]}" "${fields[2]}" "${fields[3]}"
        fi
        printf '    /%s\n' "${fields[4]}"
        pkg="${fields[2]}"
    done
    return 127
}
