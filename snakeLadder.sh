#!/bin/bash -x

echo "Welcome to Snake & Ladder "

position=0
endPosition=100
while [ $position -lt $endPosition ]
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
				elif [ $position -gt $endPosition ]
				then
					position=$(($postition-$diceRandom))
				else
					echo "Position--> " $position
				fi
done

