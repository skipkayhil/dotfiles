# Setup fzf
# ---------
prepend_path "$DOTFILES/opt/fzf/bin"

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
