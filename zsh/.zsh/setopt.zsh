# History
HISTFILE=~/.zhistory
HISTSIZE=12000
SAVEHIST=10000
setopt APPEND_HISTORY # Allow multiple terminal sessions to all append to one zsh command history
setopt HIST_EXPIRE_DUPS_FIRST # When trimming history, lose oldest duplicates first
setopt HIST_IGNORE_SPACE # Remove command line from history list when first character on the line is a space
setopt EXTENDED_HISTORY
setopt SHARE_HISTORY

# Tab completion
setopt MENU_COMPLETE
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# History searching with arrow keys
bindkey "$key[Up]" up-line-or-search
bindkey "$key[Down]" down-line-or-search
