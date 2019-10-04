#!/bin/sh
# Source: https://gist.github.com/todgru/6224848

session="default"

# Create a new detached tmux session
cd /mnt/d # WSL Only
tmux new-session -d -s $session -n ranger

# Run ranger on window 1
tmux send-keys "ranger" C-m

# Create a new window called TODO
tmux new-window -t $session:2 -n TODO

# Run vim on window 2
tmux send-keys "vim /mnt/d/TODO" C-m # WSL only
# tmux send-keys "vim ~/TODO" C-m # Linux only

# Return to main ranger window
tmux select-window -t $session:1

# Finished setup, attach to the tmux session!
tmux attach-session -t $session
