alias g="git"

alias gb="git branch"
alias gc="git commit"
alias gca="git commit --amend"
alias gd="git diff"
alias gds="git diff --staged"
alias gf="git fetch"
alias gg="git status --short --branch"
alias gl="git pull"
alias glu='git pull upstream $(git branch --show-current)'
alias gp="git push"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gs="git switch"

# depends on gg alias
ga() {
  if  [ $# -eq 0 ]; then
    git add . -p
  else
    git add "$@"
  fi

  # run gg but return the exit code of git add
  local exit_code=$?
  gg
  return $exit_code
}
