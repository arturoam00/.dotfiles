BORG_SECRETS="$XDG_CONFIG_HOME/borg/.secrets"
if [ -f "$BORG_SECRETS" ]; then
	export BORG_PASSCOMMAND="cat $BORG_SECRETS"
fi
