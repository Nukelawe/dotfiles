#
# ~/.profile
#
if test ! $DISPLAY && echo $XDG_VTNR | grep '[01]' && test $XDG_VTNR -eq 1 ; then
	exec startx
fi

if test -f $HOME/.bashrc; then
	source $HOME/.bashrc
fi
