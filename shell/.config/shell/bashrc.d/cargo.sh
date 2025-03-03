CARGO="$CARGO_HOME/env"
if [ -f "$CARGO" ]; then
    case ":${PATH}:" in
        *:"$CARGO_HOME/bin":*)
            ;;
        *)
            # Prepending path in case a system-installed rustc needs to be overridden
            export PATH="$CARGO_HOME/bin:$PATH"
            ;;
    esac
fi


