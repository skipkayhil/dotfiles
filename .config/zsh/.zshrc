# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export DISPLAY=:0.0
export GPG_TTY=$TTY

if (( $+commands[nvim] )); then
  alias vim='nvim'
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Load dotfile utility functions
source "$XDG_CONFIG_HOME/zsh/utils.sh"

KEYTIMEOUT=1

if [[ -a ~/.localrc ]]; then
  source_file ~/.localrc
fi

# Ensure the xdg data & cache directories exist
[[ ! -d "${XDG_DATA_HOME}/zsh" ]] && mkdir -p "${XDG_DATA_HOME}/zsh"
[[ ! -d "${XDG_CACHE_HOME}/zsh" ]] && mkdir -p "${XDG_CACHE_HOME}/zsh"

# load tool configuration
source_files_in "$XDG_CONFIG_HOME"/zsh/tools.d/*.zsh

source_files_in "$XDG_CONFIG_HOME"/zsh/init.d/*.zsh

path=("$HOME/.local/bin" "$DOTFILES/bin" $path)

source_file "$DOTFILES/opt/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"
