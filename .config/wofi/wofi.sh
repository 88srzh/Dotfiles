CONFIG="$HOME/.config/wofi/config"
STYLE="$HOME/.config/wofi/src/latte/style.css"

if [[ ! $(pidof wofi) ]]; then
    wofi --conf "${CONFIG}" --style "${STYLE}"
else
    pkill wofi
fi
