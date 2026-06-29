function mkd() {
  mkdir -p "$@" && cd "$@"
}

function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status -sb
  fi
}
__git_complete g git
