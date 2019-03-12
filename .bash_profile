#
# ~/.bash_profile
#

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

source ~/.bash_aliases

export PATH="$HOME/bin:$PATH"

