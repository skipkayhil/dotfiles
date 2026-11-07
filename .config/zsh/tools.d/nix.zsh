if [[ -d "$XDG_STATE_HOME/nix/profiles/home" ]]; then
  path=("$XDG_STATE_HOME/nix/profiles/home/bin" $path)
  fpath=("$XDG_STATE_HOME/nix/profiles/home/share/zsh/site-functions" $fpath)
fi
