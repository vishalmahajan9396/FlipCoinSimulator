#!/bin/bash -x

echo "Welcome to Flip Coin Simulation";

isHead=1;
randomCheck=$(( RANDOM % 2 ));

if [ $isHead -eq $randomCheck ]
then
	echo "Head";
else
	echo "Tail";
fi
