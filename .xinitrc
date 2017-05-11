rmmod pcspkr

[[ -f $HOME/.Xresources ]] && xrdb -load $HOME/.Xresources

exec i3
