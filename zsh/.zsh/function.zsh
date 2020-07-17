# Easy extract
ex () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1                  ;;
            *.tar.gz)    tar xvzf $1                  ;;
            *.bz2)       bunzip2 $1                   ;;
            *.rar)       unrar x $1                   ;;
            *.gz)        gunzip $1                    ;;
            *.tar)       tar xvf $1                   ;;
            *.tbz2)      tar xvjf $1                  ;;
            *.tgz)       tar xvzf $1                  ;;
            *.zip)       unzip $1                     ;;
            *.Z)         uncompress $1                ;;
            *.7z)        7z x $1                      ;;
            *)           echo "can't extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# Mkdir recursively, then cd
mkcd () {
    mkdir -p "$*"
    cd "$*"
}

ydi () {
    # # original from u/frumious
    # url="$1"
    # answer=$(youtube-dl -F "$url" | grep '^[0-9]' |zenity --list --column='Select which one' --width=800 --height=400)
    # if [ -z "$answer" ] ; then
    #     echo "canceled"
    # fi
    # number=$(echo $answer | awk '{print $1}')
    # youtube-dl "$url" -f "$number" -ciw --download-archive downloaded.txt -o "%(title)s.%(ext)s" "$url"

    url="$1"

    export NEWT_COLORS='
        root=,red
        title=red,white
        textbox=,white
        window=,white
        border=black,white
        button=white,red
        listbox=,white
        actsellistbox=white,red
        compactbutton=,white
        actlistbox=white,red
    '

    array=()
    youtube-dl -F "$url" | grep '^[0-9]' | while read line; do e=$(sed 's/.*:"//;s/"//' <<<$line); array+=($e $e); done
    answer=$( whiptail --notags --title "Youtube-DL" --menu 'Select which one' 20 120 10 $array 3>&1 1>&2 2>&3)

    number=$(echo $answer | awk '{print $1}')
    audio=(249 250 140 251)

    if [ -z "$answer" ] ; then
        # cancel
        echo "canceled"
    elif [[ ! ${audio[*]} =~ "$number" ]]; then
        # not audio
        youtube-dl "$url" -f "$number"+bestaudio -ciw -o "%(title)s.%(ext)s" "$url"
    else
        # audio
        youtube-dl "$url" -f "$number" -ciw -o "%(title)s.%(ext)s" "$url"
    fi
}
