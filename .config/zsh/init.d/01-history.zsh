#
# Zsh History Configuration
#

HISTFILE="$XDG_DATA_HOME/zsh/history"
HISTSIZE=10000
SAVEHIST=10000

setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY     # Write to the history file immediately, not when the shell exits
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate
