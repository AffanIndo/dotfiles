# No more cd ../../../..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Fast cd
alias cdgit='cd ~/Programming/git'
alias cddot='cd ~/dotfiles'

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

# Easy clear screen
alias cls='clear'

# NPM lists
alias nll='npm list --depth=0'
alias nlg='npm list -g --depth=0'

# Alert for long command
alias alert='notify-send 'Alert!' '''

# Open android emulator
alias emulator='~/Android/Sdk/tools/emulator -avd Nexus_S_API_22'

