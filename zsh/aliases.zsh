alias ..='cd ..'

if (( $+commands[gls] ))
then
    alias ls='gls -F --color'
    alias l='gls -lAh --color'
    alias ll='gls -l --color'
    alias la='gls -A --color'
else
    alias ls='ls -F --color=auto'
    alias l='ls -lAh --color=auto'
    alias ll='ls -l --color=auto'
    alias la='ls -A --color=auto'
fi
