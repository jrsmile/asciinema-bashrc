command_exists () {
    command -v "$1" &> /dev/null 2>&1 ;
}
if command_exists asciinema ; then
        if [[ -z $ASCIINEMA_REC ]]; then
                if [[ -z $SSH_CONNECTION ]];
                then
                        whoami="$(whoami)-local"
                else
                        whoami="$(whoami)-$(echo $SSH_CONNECTION | awk '{print $1}')"
                fi
                printf "recording to: %s\n" "/tmp/history-$whoami-$(date +"%Y%m%dT%H%M%S%Z").json"
                export ASCIINEMA_REC="1"
                exec asciinema rec -q -i 1 /tmp/history-$whoami-$(date +"%Y%m%dT%H%M%S%Z").json
        fi
fi
