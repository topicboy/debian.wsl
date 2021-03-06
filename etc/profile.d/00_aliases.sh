# color aliases
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# some ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias lla='ls -l -a'
alias lsa='ls -a'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Dirs
alias cdg='cd ~/git/'
alias cds='cd ~/scripts'

# CD
alias cd..="cd .."
alias cd.2='cd ../..'
alias cd.3='cd ../../..'
alias cd.4='cd ../../../..'
alias cd.5='cd ../../../../..'

# MKDIR
alias mkdir="mkdir -pv"

# SCRIPT
alias housekeeping='housekeeping.sh'
alias stack-1-up='stack-1-up.sh'
alias stack-1-down='stack-1-down.sh'
alias stack-1-update='stack-1-update.sh'
alias up='stack-1-up.sh'
alias down='stack-1-down.sh'
alias update='stack-1-update.sh'
