#!/bin/sh
# Source: https://gist.github.com/todgru/6224848

session="default"

# If windows, set D: as initial directory
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    cd /mnt/d # WSL Only
fi

# Create a new detached tmux session
tmux new-session -d -s $session -n ranger

# Run ranger on window 1
tmux send-keys "ranger" C-m

# Create a new window called TODO
tmux new-window -t $session:2 -n TODO

# Run vim on window 2
if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    tmux send-keys "vim /mnt/d/TODO" C-m # WSL only
else
    tmux send-keys "vim ~/TODO" C-m # Linux only
fi

# Return to main ranger window
tmux select-window -t $session:1

# Finished setup, attach to the tmux session!
tmux attach-session -t $session


