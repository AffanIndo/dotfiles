# Source: https://github.com/zanshin/dotfiles/blob/master/zsh/setopt.zsh

# History
# Pick one:
# APPEND_HISTORY writes history to file when zsh exits
# INC_APPEND_HISTORY writes history after they start executing
# INC_APPEND_HISTORY_TIME writes history after they complete executing
# SHARE_HISTORY writes history after they start executing (like INC_APPEND_HISTORY) and also rereads the history file after every command (to import history other sessions have written)
HISTFILE=~/.zhistory
HISTSIZE=12000
SAVEHIST=10000
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST # When trimming history, lose oldest duplicates first
setopt HIST_IGNORE_SPACE # Remove command line from history list when first character on the line is a space
setopt HIST_IGNORE_DUPS # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS # When searching history don't display results already cycled through twice
setopt HIST_REDUCE_BLANKS # Remove extra blanks from each command line being added to history

# History searching with arrow keys
bindkey "$key[Up]" up-line-or-search
bindkey "$key[Down]" down-line-or-search

# Tab completion
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*' # Case insensitive, and autocomplete partial matches
zstyle ':completion:*' menu select

# Correction
unsetopt CORRECT_ALL # spelling correction for arguments
setopt CORRECT # spelling correction for commands
