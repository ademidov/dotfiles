# Hack for tmuxinator
function rvm () {
  if [[ $1 == 'use' ]]; then
    rbenv shell $2
  fi
}

function c() {
  cd ~/projects/$1
}

function _c() {
  local curw
  COMPREPLY=()
  curw=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=($(compgen -W '`ls ~/projects`' -- $curw))
  return 0
}
complete -F _c c
