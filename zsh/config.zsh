#export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

if (( $+commands[gdircolors] )) then
    eval $(gdircolors ~/.dotfiles/theme/dircolors.base16.dark)
else
    eval $(dircolors ~/.dotfiles/theme/dircolors.base16.dark)
fi

# updated fpath for future functions, autoload errors if empty so its commented
fpath=($DOTFILES/zsh/functions $fpath)

# autoload -U $DOTFILES/zsh/functions/*(:t)

HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
