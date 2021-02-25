#!/bin/bash


ctrlc_count=0
function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count < 4 ]]; then
		echo "Stop that."
	elif [[ $ctrlc_count == 4 ]]; then
		echo "One more time and I quit."
	else
		echo "That's it. I Quit!"
		exit
	fi
}

trap no_ctrlc SIGINT

while true 
do 
	echo Sleeping
	sleep 10
done
