#!/bin/bash -x

echo "Welcome to Snake & Ladder "

position=0

diceRandom=$(($RANDOM%6 +1 ))

option=$(($RANDOM%3))

case $option in

	0)
		position=0
	;;
	1)
		position=$(($position + $diceRandom))
	;;
	2)
		position=$(($position - $diceRandom))
	;;
esac

echo $diceRandom
echo $option
echo $position
