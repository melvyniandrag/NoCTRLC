#!/bin/bash

ctrlc_count=0

function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count == 1 ]]; then
		echo "Stop That"
	elif [[ $ctrlc_count == 2 ]]; then
		echo "I said stop"
	elif [[ $ctrlc_count == 3 ]]; then
		echo "Please stop?"
	elif [[ $ctrlc_count == 4 ]]; then
		echo "One more time and I'm done."
	else
		echo "Thats it. I quit"
		exit
	fi
}

trap no_ctrlc SIGINT

while true
do
	echo "Sleeping"
	sleep 10
done
