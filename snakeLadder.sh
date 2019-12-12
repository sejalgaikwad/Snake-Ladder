#!/bin/bash -x

echo "Welcome to Snake & Ladder "

position=0

diceRandom=$(($RANDOM%6 +1 ))

echo $diceRandom
