# History
HISTFILE=~/.zhistory
HISTSIZE=12000
SAVEHIST=10000
setopt APPEND_HISTORY # Allow multiple terminal sessions to all append to one zsh command history
setopt INC_APPEND_HISTORY # Add comamnds as they are typed, don't wait until shell exit
setopt HIST_EXPIRE_DUPS_FIRST # When trimming history, lose oldest duplicates first
setopt HIST_IGNORE_SPACE # Remove command line from history list when first character on the line is a space
setopt HIST_IGNORE_DUPS # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS # When searching history don't display results already cycled through twice
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

# History searching with arrow keys
bindkey "$key[Up]" up-line-or-search
bindkey "$key[Down]" down-line-or-search

# Tab completion
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*' # Case insensitive, and autocomplete partial matches
zstyle ':completion:*' menu select

# Correction
unsetopt correct_all # spelling correction for arguments
setopt correct # spelling correction for commands
