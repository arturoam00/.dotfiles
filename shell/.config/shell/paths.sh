MANPATH="/usr/local/texlive/2024/texmf-dist/doc/man:$MANPATH"; export MANPATH 
INFOPATH="/usr/local/texlive/2024/texmf-dist/doc/info:$INFOPATH"; export INFOPATH
MANPATH="$HOME/.local/share/man:$MANPATH"; export MANPATH 
# export LD_LIBRARY_PATH=$(find $HOME/.local/lib -type d | paste -sd:)${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}

addToPathFront usr/local/texlive/2024/bin/x86_64-linux
addToPathFront ~/.local/bin
addToPath $(find ~/.local/bin -type d | paste -sd ':' -)

