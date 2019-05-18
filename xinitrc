xset -dpms
xset s off

# Enable zapping (C-A-<Bksp> kills X)
setxkbmap us dvorak terminate:ctrl_alt_bksp ctrl:nocaps

# Enforce correct locales from the beginning:
# LC_ALL is unset since it overwrites everything
# LANG=de_DE.UTF-8 is used, except for:
# LC_MESSAGES=C never translates program output
# LC_TIME=en_DK leads to yyyy-mm-dd hh:mm date/time output
unset LC_ALL
export LANG=en_US.UTF-8
export LC_MESSAGES=C
export LC_TIME=en_CA.UTF-8
export LANGUAGE=en
export LC_CTYPE=en_US.UTF-8

# Use XToolkit in java applications
export AWT_TOOLKIT=XToolkit

# Set background color
xsetroot -solid "#333333"

# Enable core dumps in case something goes wrong
ulimit -c unlimited
xset b off

feh --bg-fill --randomize ~/.wallpapers/* &
eval $(ssh-agent -s)
export SSH_ASKPASS=ssh-askpass

xrdb -merge -I$HOME ~/.Xresources

exec i3 -V >> ~/.logs/i3-$(date -u +'%Y%m%dT%H%M%S%z').log 2>&1
