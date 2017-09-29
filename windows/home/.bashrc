# Cd
alias cdd='cd /d'
alias cdblog='cd /d/PROGRAMMING/git/AffanIndo.github.io'
alias cdgit='cd /d/PROGRAMMING/git'

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


# Misc
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias clone="wget -mkEpnp"
alias backup="python /d/PROGRAMMING/git/python-script/backup.py"
alias namer="cp /d/PROGRAMMING/git/python-script/namer.py . && python namer.py"
alias windowsTime="cd /d/PROGRAMMING/git/python-script/ && source /d/PROGRAMMING/git/python-script/my_env/Scripts/activate && python windowsTime.py"
alias my_env="cd /d/PROGRAMMING/git/python-script/ && source /d/PROGRAMMING/git/python-script/my_env/Scripts/activate"

# Important files
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# Software
alias subl='/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe'
alias wamp='/c/wamp/wampmanager.exe'
alias fz='/c/Program\ Files/FileZilla\ FTP\ Client/filezilla.exe'
alias python='winpty python.exe' # troubleshoot git bash python

# Non-alias
HISTSIZE=10000
HISTFILESIZE=10000

function crun { make $1 && ./$1; }
