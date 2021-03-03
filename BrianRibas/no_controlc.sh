#!/usr/bin/bash

ctrlc_count = 0

function no_ctrlc()
{
    let ctrlc_count++
    echo
    if [[ $ctrlc_count == 1 ]]; then
	    echo "Stop."
    elif [[ $ctrlc_count == 2 ]]; then
	    echo "Stop again."
    elif [[ $ctrlc_count == 3 ]]; then
	    echo "Try again."
    elif [[ $ctrlc_count == 4 ]]; then
	    echo "One more time."
    else
	    echo "that's it. i quit."
	    exit
    fi
}

trap no_ctrlc SIGINT

while true
do
	echo Sleeping
	sleep 1
done
