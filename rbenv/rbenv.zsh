if ! rbenv_loc="$(type -p "$rbenv")" || [[ -z $rbenv_loc ]]; then
    eval "$(rbenv init -)"
fi
