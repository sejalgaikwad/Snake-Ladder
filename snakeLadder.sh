#!/bin/bash -x

echo "Welcome to Snake & Ladder "

endPosition=100
diceCount=0
player1Position=0
player2Position=0

function getPosition(){
	position=$1
	diceRandom=$(($RANDOM%6 +1 ))
	((diceCount++))
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
				fi
					echo "$position"
}
getPosition

read -p "Enter first player name:- " player1
read -p "Enter second player name:- " player2 

while [[ $player1Position -lt $endPosition && $player2Position -lt $endPosition ]]
do

player1Position=$(getPosition $player1Position)
player2Position=$(getPosition $player2Position)

echo "player 1 position :-" $player1Position
echo "player 2 position :-" $player2Position

	if [[ $player1Position -gt  $player2Position && $player1Position -eq $endPosition ]]
	then
		echo "Congratulations, $player1 you WIN!!!"
	elif [ $player2Position -eq $endPosition ] 
	then
		echo "Congratulations, $player2 you WIN!!!"
	fi

done

#echo "Number of times the dice was played to win the game:- "$diceCount
