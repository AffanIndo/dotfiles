# No more cd ../../../..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Git stuff
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gl='git log'
alias glo='git log --oneline'
alias gs='git status'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gr='git rebase'
alias gp='git push'
alias gu='git unstage'
alias gco='git checkout'
alias gb='git branch'

# General
alias h='history 1' # In zsh `history` lists only 15 most recent history entries, use `history 1` instead
alias hg='history 1 | grep'
alias ls='ls -hF --color=auto'
alias lss='du -sh ./* | sort -h' # Directories sorted by size
alias tm='~/.zsh/start-tmux.sh'
alias yd='youtube-dl'
alias yd1="youtube-dl -f 'bestvideo[height<=1080]+bestaudio'"
alias yd2="youtube-dl -f 'bestvideo[height<=720]+bestaudio'"
alias py='python3'
alias server='python3 -m http.server' # Python simple server `$ server 9999`
alias ffres='ffprobe -v error -select_streams v:0 -show_entries stream=height,width -of csv=s=x:p=0' # Show video resolution

