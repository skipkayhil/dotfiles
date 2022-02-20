#
# Zsh Completion Configuration
#

fpath=("$XDG_CONFIG_HOME/zsh/functions.d" $fpath)
autoload -U $XDG_CONFIG_HOME/zsh/functions.d/*(:t)

# Initialize compinit and compile zcompdump if necessary
# based on diy++ config from zsh-bench
# https://github.com/romkatv/zsh-bench/blob/9699de5ba1adfd735609d3c7f1efa19cbefa73f6/configs/diy++/skel/.zshrc
_zcompdump="$XDG_CACHE_HOME/zsh/zcompdump-$EUID-$ZSH_VERSION"
autoload -Uz compinit && compinit -C -d "$_zcompdump"
[[ "${_zcompdump}.zwc" -nt "$_zcompdump" ]] || zcompile -R -- "${_zcompdump}.zwc" "$_zcompdump"
unset _zcompdump

# https://github.com/holman/dotfiles/blob/master/zsh/completion.zsh
#
# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending
