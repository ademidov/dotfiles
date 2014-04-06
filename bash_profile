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

# init rbenv
if [[ -d $HOME/.rbenv ]]; then
     export PATH="$HOME/.rbenv/bin:$PATH"
     eval "$(rbenv init - --no-rehash)"
     # (rbenv rehash &) 2> /dev/null
fi

BREW_PREFIX=`brew --prefix`
  [ -s $BREW_PREFIX/etc/profile.d/z.sh ] && source $BREW_PREFIX/etc/profile.d/z.sh
  [ -f $BREW_PREFIX/share/bash-completion/bash_completion ] && source $BREW_PREFIX/share/bash-completion/bash_completion
unset BREW_PREFIX
