# cd
alias cdblog='cd /d/PROGRAMMING/git/AffanIndo.github.io'
alias cdgit='cd /d/PROGRAMMING/git'

# misc
alias cdd='cd /d'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias clone="wget -mkEpnp"
alias backup="python /d/PROGRAMMING/git/python-script/backup.py"
alias namer="cp /d/PROGRAMMING/git/python-script/namer.py . && python namer.py"
alias windowsTime="cd /d/PROGRAMMING/git/python-script/ && source /d/PROGRAMMING/git/python-script/my_env/Scripts/activate && python windowsTime.py"
alias my_env="cd /d/PROGRAMMING/git/python-script/ && source /d/PROGRAMMING/git/python-script/my_env/Scripts/activate"

# important files
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'

# software
alias subl='/c/Program\ Files/Sublime\ Text\ 3/sublime_text.exe'
alias wamp='/c/wamp/wampmanager.exe'
alias fz='/c/Program\ Files/FileZilla\ FTP\ Client/filezilla.exe'
alias python='winpty python.exe' # troubleshoot git bash python

# non-alias
HISTSIZE=10000
HISTFILESIZE=10000

function crun { make $1 && ./$1; }
