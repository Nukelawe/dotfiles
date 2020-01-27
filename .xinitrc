#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
userkeys=$HOME/.Xkeymap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# redshift screen color for eye pleasure
if [ -x "$(command -v redshift)" ]; then
    redshift -P -O 2500
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# Add ~/bin to path
export PATH="$PATH:$HOME/bin"

setxkbmap -layout fi # Set keyboard layout
if [ -f "$userkeys" ]; then
	xkbcomp $userkeys $DISPLAY
fi

xset r rate 200 30 # Set key delay and rate
xset b off # Turn terminal beep off
# start the window manager i3
exec i3 -c $HOME/.config/i3/config

