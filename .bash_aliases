
alias ls="ls -b --color=auto --group-directories-first"
alias ll="ls -lh"
alias la="ls -Ah"

alias google-chrome="google-chrome-stable"

alias open="xdg-open"

# power management
alias lock="i3lock -t --image=$HOME/.local/share/lock/lock-screen"
alias hibernate="lock; sudo /usr/lib/systemd/systemd-sleep hibernate"
alias suspend="lock; sudo /usr/lib/systemd/systemd-sleep suspend"
alias sleep="suspend"
