#!/bin/zsh
# A minimalistic pomodoro using systemd timers
#sleep 1500 && zenity --warning --text="25 minutes passed" 
notify-send '🍅 Pomodoro' 'Stay focused! 🎯'
sleep 1500 &&  notify-send '🍅 Pomodoro' '25 minutes passed' \
    && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
#sleep 300 && zenity --warning --text="Back to workd" # Short pause
sleep 300 && notify-send '🍅 Pomodoro' 'Back to work!' \
    && paplay /usr/share/sounds/freedesktop/stereo/alarm-clock-elapsed.oga
