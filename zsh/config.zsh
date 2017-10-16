#export LSCOLORS="exfxcxdxbxegedabagacad"
export CLICOLOR=true
eval $(dircolors ~/.dotfiles/theme/dircolors.base16.dark)

fpath=($ZSH/functions $fpath)
fpath=("$HOME/.zfunctions" $fpath)

#autoload -U $ZSH/functions/*(:t)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
bindkey -e
