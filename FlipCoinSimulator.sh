#!/bin/bash -x

echo "Welcome to Flip Coin Simulation";

isHead=1;
isHeadWon=0;
isTailWon=0;

for (( count=0; count<=20; count++ ))
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
