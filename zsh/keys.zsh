# create a zkbd compatible hash;
# to add other keys to this hash, see: man 5 terminfo
if [[ -z $key ]]
then
    typeset -g -A key
    key=(
        BackSpace   "${terminfo[kbs]}"
        Home        "${terminfo[khome]}"
        End         "${terminfo[kend]}"
        Insert      "${terminfo[kich1]}"
        Delete      "${terminfo[kdch1]}"
        Up          "${terminfo[kcuu1]}"
        Down        "${terminfo[kcud1]}"
        Left        "${terminfo[kcub1]}"
        Right       "${terminfo[kcuf1]}"
        PageUp      "${terminfo[kpp]}"
        PageDown    "${terminfo[knp]}"
    )     
fi

# Finally, make sure the terminal is in application mode, when zle is
# active. Only then are the values from $terminfo valid.
if (( ${+terminfo[smkx]} )) && (( ${+terminfo[rmkx]} )); then
    function zle-line-init () {
        echoti smkx
    }
    function zle-line-finish () {
        echoti rmkx
    }
    zle -N zle-line-init
    zle -N zle-line-finish
fi
    
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "${key[Up]}" up-line-or-beginning-search # Up
bindkey $key[Down] down-line-or-beginning-search # Down

