alias ll="ls -lbh --color=auto"
alias la="ls -Abh --color=auto"
alias ls="ls -b --color=auto"

alias open="xdg-open"

# power management
alias lock="i3lock -t --image=$HOME/.local/share/lock/lock-screen"
alias hibernate="lock; systemctl hibernate"
alias suspend="lock; systemctl suspend"
alias sleep="suspend"
