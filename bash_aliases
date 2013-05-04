# Unix
alias ll='ls -lah'
alias ln='ln -v'
alias mkdir='mkdir -p'
# alias pbcopy='xclip -selection clipboard'
# alias pbpaste='xclip -selection clipboard -o'
alias tmux="tmux -2"

alias :e="${EDITOR}"
alias :r="cat"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if [[ "$OSTYPE" =~ ^darwin ]]; then
  alias ls='command ls -G';
fi;

# Ruby
alias b='bundle'
alias sps='spin serve --push-results'
alias spp='spin push'

alias evrone='$HOME/scripts/evrone-shell.sh'
