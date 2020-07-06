g() {
  if [ "$#" -eq 0 ]
  then
    git status
  else
    git "$@"
  fi
}
alias ga="git add"
alias gs="git switch"
alias gc="git commit"
alias gca="git commit --amend"
alias gd="git diff"
