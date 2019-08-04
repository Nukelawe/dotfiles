#
# ~/.profile
#
if test ! $DISPLAY && test $XDG_VTNR -eq 1; then
	exec startx
fi

if test -f $HOME/.bashrc; then
	source $HOME/.bashrc
fi
