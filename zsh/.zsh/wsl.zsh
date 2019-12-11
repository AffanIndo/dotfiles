if [ -f /proc/sys/fs/binfmt_misc/WSLInterop ]; then
    # Alias
    alias d='/mnt/d'

    # Export
    export LS_COLORS='ow=01;34;40'
fi
