#!/bin/bash -x

echo "Welcome to Snake & Ladder "

position=0

while [ $position -lt 101 ]
do
	diceRandom=$(($RANDOM%6 +1 ))
	option=$(($RANDOM%3))

	case $option in
		0)
			position=$position
		;;
		1)
			position=$(($position + $diceRandom))
		;;
		2)
			position=$(($position - $diceRandom))
		;;
	esac
				if [ $position -lt 0 ]
				then
					position=0
				else
					echo "position:- "$position
				fi
done

