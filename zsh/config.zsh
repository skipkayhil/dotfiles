#export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true

if (( $+commands[gdircolors] )) then
    eval $(gdircolors ~/.dotfiles/theme/dircolors.base16.dark)
else
    eval $(dircolors ~/.dotfiles/theme/dircolors.base16.dark)
fi

fpath=($ZSH/zsh/plugins $fpath)

#autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
bindkey -e
