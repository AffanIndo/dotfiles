# General
export LESSHISTFILE=/dev/null # Disable .lesshst
export EDITOR=/usr/bin/vim

# FZF (require FZF and fd)
export FZF_DEFAULT_COMMAND='fd --type f --follow --exclude node_modules --exclude "*RECYCLE.BIN"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND='fd --type d --follow --exclude node_modules --exclude "*RECYCLE.BIN"'
