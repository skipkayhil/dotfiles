# Setup fzf
# ---------
path+=("$DOTFILES/opt/fzf/bin")

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$DOTFILES/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "$DOTFILES/opt/fzf/shell/key-bindings.zsh"

# fzf-tab
# -------
source "$DOTFILES/opt/fzf-tab/fzf-tab.zsh"

export FZF_DEFAULT_COMMAND="fd --type file --follow --hidden --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--color=bg+:#474a58,bg:#2b2e3b,border:#cacedf,spinner:#e3cd94,hl:#808393,fg:#cacedf,header:#808393,info:#e3cd94,pointer:#fc8083,marker:#afb5ff,fg+:#cacedf,preview-bg:#2b2e3b,prompt:#afb5ff,hl+:#fc8083"
