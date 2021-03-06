# Source: https://github.com/zanshin/dotfiles/blob/master/zsh/setopt.zsh

# History
# Pick one:
# APPEND_HISTORY writes history to file when zsh exits
# INC_APPEND_HISTORY writes history after they start executing
# INC_APPEND_HISTORY_TIME writes history after they complete executing
# SHARE_HISTORY writes history after they start executing (like INC_APPEND_HISTORY) and also rereads the history file after every command (to import history other sessions have written)
HISTFILE="$HOME/.zhistory"
HISTSIZE=20000
SAVEHIST=$HISTSIZE
setopt SHARE_HISTORY # Share history between all sessions
setopt HIST_IGNORE_DUPS # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS # When searching history don't display results already cycled through
setopt HIST_REDUCE_BLANKS # Remove extra blanks from each command line being added to history
setopt HIST_IGNORE_SPACE # Remove command line from history list when first character on the line is a space

# History searching with arrow keys
bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search

# Tab completion
autoload -Uz compinit; compinit # Load completion system
setopt MENU_COMPLETE
setopt GLOBDOTS # Autocomplete hidden files
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*' # Case insensitive, and autocomplete partial matches
zstyle ':completion:*' menu select
bindkey '^[[Z' reverse-menu-complete

# Correction
unsetopt CORRECT_ALL # spelling correction for arguments
setopt CORRECT # spelling correction for commands

# Auto change directory
setopt AUTO_CD

# Auto quote pasted url
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

