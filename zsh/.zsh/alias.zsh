# No more cd ../../../..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Fast cd
alias cdblog='cd ~/Programming/git/AffanIndo.github.io/_posts'
alias cddot='cd ~/dotfiles'
alias cdgit='cd ~/Programming/git'
alias cdw='cd /run/media/Affan'

# Git stuff
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gs='git status'
alias gd='git diff'
alias gf='git fetch'
alias gm='git merge'
alias gr='git rebase'
alias gp='git push'
alias gu='git unstage'
alias gco='git checkout'
alias gb='git branch'

# Apps shorthand
alias yd='youtube-dl'
alias py='python3'
alias server='python3 -m http.server' # Python simple server `$ server 9999`
alias h='history 1' # In zsh `history` lists only 15 most recent history entries, use `history 1` instead
alias hg='history 1 | grep'

# Misc
alias ls='ls -hF --color=auto'
alias lss='du -sh ./* | sort -h' # Directories sorted by size
alias tm='~/.zsh/start-tmux.sh'

