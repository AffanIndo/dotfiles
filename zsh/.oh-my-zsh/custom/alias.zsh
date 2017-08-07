# No more cd ../../../..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

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
alias mplayer_music='mplayer -playlist <(find "$PWD" -type f)'

# Apps shorthand
alias ydl='youtube-dl'

# Easy clear screen
alias cls='clear'

# NPM lists
alias nll='npm list --depth=0'
alias nlg='npm list -g --depth=0'

# Alert for long command
alias alert='notify-send 'Alert!' '''

# Open android emulator
alias emulator='~/Android/Sdk/tools/emulator -avd Nexus_S_API_22'
