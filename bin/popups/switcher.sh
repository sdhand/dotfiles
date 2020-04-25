#!/usr/bin/env sh

rofi -kb-cancel "Escape" -modi windowcd -show windowcd &
launcher=$!
sleep .13; n30f ~/.n30f/arrow-blue.png -i -x 45 -y 974 &
n30f=$!
wait $launcher
kill $n30f
