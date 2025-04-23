# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
# Both MAMBA_EXE and MAMBA_ROOT_PREFIX __need to be defined__ for this to work. 
# This is better done in either `.env` or `.profile`, the first always takes precedence.
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
