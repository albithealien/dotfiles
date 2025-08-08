# monitors
xrandr --output eDP -s 1920x1080 -r 60 --set TearFree on
xrandr --output HDMI-A-0 -s 1920x1080 -r 60 --primary --right-of eDP --set TearFree on

# stop monitor from turning off
# xset s off

# keyboard and mouse
setxkbmap us
xinput --set-prop "Logitech M570" "libinput Scrolling Pixel Distance" 12

# swapping ESC with CAPS
# setxkbmap -option caps:swapescape

# audio
pulseaudio &

# hotkeys and wm
sxhkd &
exec dbus-run-session dk
