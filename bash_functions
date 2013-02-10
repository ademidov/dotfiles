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

function ff() {
  field="\$$1"
  awk "{ print $field }"
}

# Rake completion
# Stolen from https://github.com/ai/rake-completion
export COMP_WORDBREAKS=${COMP_WORDBREAKS/\:/}

_rakecomplete() {
    if [ -f Rakefile ]; then
        recent=`ls -t .rake_tasks~ Rakefile **/*.rake 2> /dev/null | head -n 1`
        if [[ $recent != '.rake_tasks~' ]]; then
            rake --silent --prereqs | grep "rake" | cut -d " " -f 2 > .rake_tasks~
        fi
        COMPREPLY=($(compgen -W "`cat .rake_tasks~`" -- ${COMP_WORDS[COMP_CWORD]}))
        return 0
    fi
}

complete -o default -o nospace -F _rakecomplete rake
