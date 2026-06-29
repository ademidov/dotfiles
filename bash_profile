BREW_PREFIX="/usr/local"
  [ -s $BREW_PREFIX/etc/profile.d/z.sh ] && source $BREW_PREFIX/etc/profile.d/z.sh
  [ -f $BREW_PREFIX/etc/profile.d/bash_completion.sh ] && source $BREW_PREFIX/etc/profile.d/bash_completion.sh
unset BREW_PREFIX

for file in ~/.bash_{exports,prompt,aliases,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Recursive globbing
shopt -s globstar

shopt -s autocd
shopt -s cdspell

eval "$(direnv hook bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.bash 2>/dev/null || :

# Bob (neovim)
source "$HOME/.local/share/bob/env/env.sh"
