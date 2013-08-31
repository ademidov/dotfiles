function mkd() {
  mkdir -p "$@" && cd "$@"
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

function s() {
  if [ -f zeus.json ]; then
    zeus rspec "$@"
  else
    bundle exec rspec "$@"
  fi
}

function g {
  if [[ $# > 0 ]]; then
    git $@
  else
    git status -sb
  fi
}
complete -F _git g

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

function ssht(){
  ssh $* -t 'tmux a || tmux || /bin/bash'
}

function vtmux() {
  vagrant ssh -- -t 'tmux a || tmux || /bin/bash'
}
