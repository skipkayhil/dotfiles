# updated fpath for future functions, autoload errors if empty so its commented
fpath=($DOTFILES/zsh/functions $fpath)

autoload -U $DOTFILES/zsh/functions/*(:t)

HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
