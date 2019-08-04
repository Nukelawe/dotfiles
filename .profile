#
# ~/.profile
#

if test ! $DISPLAY && test $XDG_VTNR -eq 1; then
  exec startx
fi

# Environment variables
export PATH="$HOME/bin:$PATH:"
export EDITOR=vim

# Aliases 
alias ls="ls -b --color=auto --group-directories-first"
alias ll="ls -lh"
alias la="ls -Ah"
