# Dotfiles

Configuration is grouped by scope and by installation target. GNU Stow is
always invoked with `--dotfiles --no-folding`, so target directories remain
real directories and only managed files are symlinked.

## Profiles

- `personal`: Linux desktop, personal tools, and Borg backup
- `picnic`: macOS workstation
- `remote`: minimal Bash terminal
- `nikhef`: remote terminal with a host-specific `~/.env`

Install or preview a profile from any working directory:

```sh
bin/dotfiles install personal
bin/dotfiles restow personal --dry-run --verbose
bin/dotfiles doctor
```

For a machine without sudo access, clone or copy this repository and run:

```sh
./bootstrap
```

This uses micromamba's official installation script to install a pinned
executable under `~/.local/bin`, creates the `dotfiles` tools environment, and
installs the `remote` profile. GNU Stow is part of that conda-forge environment,
so it is available before the profile is linked. The bootstrap deliberately
skips micromamba's generated shell initialization because the shared shell
integration already handles it. Override the micromamba release with
`MICROMAMBA_VERSION` when intentionally upgrading it.

The bootstrap currently targets Linux remote hosts. On regular Linux and macOS
workstations, install GNU Stow with the system package manager before using
`bin/dotfiles`.

## Layout

- `stow/home` targets `$HOME`; `dot-` names become real dotfiles.
- `stow/config` targets `$XDG_CONFIG_HOME`.
- `stow/bin` targets `~/.local/bin`.
- `stow/data` targets `$XDG_DATA_HOME`.
- `profiles` selects scope bundles from all four target roots.
- `environments` contains package-manager environment declarations.
