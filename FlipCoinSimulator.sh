#!/bin/bash -x

echo "Welcome to Flip Coin Simulation";

isHead=1;
isHeadWon=0;
isTailWon=0;

while [[ $isHeadWon -lt 21 && $isTailWon -lt 21 ]]
do
	randomCheck=$(( RANDOM % 2 ));

	if [ $isHead -eq $randomCheck ]
	then
		echo "Head";
		isHeadWon=$(( isHeadWon + 1 ));
	else
		echo "Tail";
		isTailWon=$(( isTailWon + 1 ));
	fi
done

echo "Total Number Head Won:" $isHeadWon;
echo "Total Number Tail Won:" $isTailWon;

if [[ $isHeadWon -gt $isTailWon ]]
then
	difference=$(($isHeadWon - $isTailWon ));
	echo "Head Wins" $difference "times more than Tail";
elif [[ $isHead -eq $isTailWon ]]
then
	echo "Tie between Head and Tail";
else
	difference=$(($isTailWon - $isHeadWon ));
	echo "Tail Wins" $difference "times more than Head";
fi
