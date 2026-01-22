#!/bin/sh

if [ "$1" = "--help" ]  ||  [ "$1" = "-h" ]; then
	swaylock --help 2>&1| sed -e 's/swaylock/swaylock-corrupter/g' -e '/--image/d' 1>&2
else
	DISPLAYS="$(niri msg outputs | grep 'Output' | awk '{print $6}' | grep -Po '\(\K[^)]*')"
	BASE_FILE="${TMPDIR:-/tmp/ss}"
 
	for display in $DISPLAYS; do
		FILE="${BASE_FILE}${display}.png"
		grim -o "$display" "$FILE"
		corrupter "$FILE" "$FILE"
		args="$args -i ${display}:${FILE}"
	done
 
	swaylock --inside-color 00000000 --inside-wrong-color ff000080 --inside-ver-color 00000000 --inside-clear-color ff800080 --ring-color ffffff --ring-clear-color ffffffff --ring-wrong-color ffffffff --key-hl-color ffffff --bs-hl-color 808080 --text-ver-color 00000000 --ring-ver-color 808080 $args "$@"
	# double monitor fix by /u/queyenth
fi
