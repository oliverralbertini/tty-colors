#!/bin/bash

if [ "$TERM" = "linux" ]; then
	echo -en "\e]P0000000" # S_base02
	#echo -en "\e]P0252830" # S_base02
	echo -en "\e]P19E5641" # S_red
	echo -en "\e]P26C7E55" # S_green
	echo -en "\e]P3CAAF2B" # S_yellow
	echo -en "\e]P47FB8D8" # S_blue
	echo -en "\e]P5956D9D" # S_magenta
	echo -en "\e]P64c8ea1" # S_cyan
	echo -en "\e]P7808080" # S_base2
	echo -en "\e]P8454545" # S_base03
	echo -en "\e]P9CC896D" # S_orange
	echo -en "\e]PAC4DF90" # S_base01
	echo -en "\e]PBFFE080" # S_base00
	echo -en "\e]PCB8DDEA" # S_base0
	echo -en "\e]PDC18FCB" # S_violet
	echo -en "\e]PE6bc1d0" # S_base1
	echo -en "\e]PFcdcdcd" # S_base3
	clear # against bg artifacts
fi
