#!/usr/bin/env sh

if [ -z $(pgrep -f 'n30f -x 1690') ]; then
    coverdir=$(dirname "$(nowplaying.sh)")
    coverart="$coverdir"/coverart_popup.png
    if [ -f "$coverart" ]; then
        n30f -x 1845 -y 974 ~/.n30f/arrow-blue.png -i &
        n30f -x 1690 -y 766 -t "n30f-round" ~/.n30f/musicback.png &
        n30f -x 1705 -y 781 "$coverart" -i -c playpause.sh &
    fi
else
    pkill -f 'n30f -x 1690'
    pkill -f 'n30f -x 1845'
    pkill -f 'n30f -x 1705'
fi
