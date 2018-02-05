xset b off

feh --bg-fill --randomize ~/.wallpapers/* &
eval $(ssh-agent -s)
export SSH_ASKPASS=ssh-askpass

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3 -V >> ~/.logs/i3-$(date -u +'%Y%m%dT%H%M%S%z').log 2>&1
