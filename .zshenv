#!/usr/bin/env zsh
#
# Symlinked .zshenv for setting ZDOTDIR

export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

# Allow dotfiles repo to have a dynamic location
# %N gets the path of .zshenv
# :A expands the path and follows symlinks
# :h removes .zshenv so the result is the directory its in
export DOTFILES=${${(%):-%N}:A:h}

ZDOTDIR="${XDG_CONFIG_HOME}/zsh"

# Prevent Ubuntu from running compinit in /etc/zsh/zshrc
skip_global_compinit=1

typeset -gU fpath path
