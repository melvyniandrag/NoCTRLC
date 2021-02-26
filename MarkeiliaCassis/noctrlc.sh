#!/bin/bash

ctrlc_count=0

function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count == 1 ]]; then
		echo "Stpp that."
	elif [[ $ctrlc_count == 2 ]]; then
		echo "Once more and I quit."
	elif [[ $ctrlc_count == 3 ]]; then
		echo "HaHa I tricked you!!"
	elif [[ $ctrlc_count == 4 ]]; then
		echo "Quit it already! That's annoying."
	else 
		echo "Fine! Bye.. Program over."
		exit
	fi
}

trap no_ctrlc SIGINT

while true
do
	echo Sleeping
	sleep 10
done

