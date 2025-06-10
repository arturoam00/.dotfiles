# Both MAMBA_EXE and MAMBA_ROOT_PREFIX __need to be defined__ for this to work. 
# This is better done in either `.env` or `.profile`, the first always takes precedence.

if [ -z "$MAMBA_EXE" ] || [ -z "$MAMBA_ROOT_PREFIX" ]; then
    echo "Error: Required environment variables MAMBA_EXE and/or MAMBA_ROOT_PREFIX are not set."
    echo "Please define them in your .env or .profile file."
    return 1 2>/dev/null || exit 1
fi

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'micromamba shell init' !!
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from micromamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
