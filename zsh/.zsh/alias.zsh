# No more cd ../../../..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Fast cd
alias cdgit='cd ~/Programming/git'
alias cddot='cd ~/dotfiles'
alias cdw='cd /media/affan'
alias cdblog='cd ~/Programming/git/AffanIndo.github.io'
alias cdpython='cd ~/Programming/git/python-script'

# Git stuff
alias ga='git add'
alias gc='git commit -m'
alias gs='git status'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gr='git rebase'
alias gp='git push'
alias gu='git unstage'
alias gco='git checkout'

# Mplayer play all music recursively
alias music='mplayer -playlist <(find "$PWD" -type f)'

# Apps shorthand
alias yd='youtube-dl'
alias py='python3'
alias doctest='python3 -m doctest -v'
alias h='history'
alias hg='history | grep '


# NPM lists
alias nll='npm list --depth=0'
alias nlg='npm list -g --depth=0'

# Alert for long command
alias alert='notify-send 'Alert!' '''

# Misc
alias mkdir='mkdir -p'
alias cp='cp -r'
alias ls='ls -hF --color=auto'
alias ll='ls -lahF --color=auto'
alias lh='ls -d .*' # Show hidden files/directories only
alias lss='du -sh ./* | sort -h' # Directories sorted by size
alias incognito='export HISTFILE=/dev/null' # Incognito mode
alias server='python -m http.server' # Python simple server `$ server 9999`
alias cls='clear' # Easy clear screen
alias upgrade='sudo apt-get update && sudo apt-get dist-upgrade --yes'
