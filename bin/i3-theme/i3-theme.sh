#!/bin/bash

FIRST_PARAM=$1

THEMES_LOCATION=~/bin/dotfiles/themes
CONFIG_DESTINATION=~/bin/dotfiles
WALLPAPERS_LOCATION=Pictures/Wallpapers

print_usage() {
	echo "Usage: i3-theme [<argument> | <theme>]"
	echo "  -h, --help			Print help"
	echo "  -l, --list			List available themes"
}

list_themes() {
	ls $THEMES_LOCATION
}

set_theme() {
	themes=( $(list_themes) ) 
	for theme in "${themes[@]}"
	do
	    if [[ "$theme" == "$FIRST_PARAM" ]]
	    then
			cp $THEMES_LOCATION/$FIRST_PARAM/$WALLPAPERS_LOCATION/* ~/$WALLPAPERS_LOCATION
	        cp -r $THEMES_LOCATION/$FIRST_PARAM/.config $CONFIG_DESTINATION
			i3-msg restart
	        return
	    fi
	done
	echo "The specified theme cannot be found"
}

main() {
	case $FIRST_PARAM in
		"--help" | "-h" | "")
			print_usage
			exit
			;;
		"--list" | "-l")
			list_themes
			exit
			;;
		*)
			set_theme
			;;
	esac
}

main
