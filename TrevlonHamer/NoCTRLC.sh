ctrlc_count=0

function no_ctrlc()
{
	let ctrlc_count++
	echo
	if [[ $ctrlc_count == 1 ]]; then
		echo "stop that."
	elif [[ $ctrlc_count == 2 ]]; then
		echo "did you not hear me the first time?stop that."
	elif [[ $ctrlc_count == 3 ]]; then
		echo "why are you so persistant?stop that."
	elif [[ $ctrlc_count == 4 ]]; then
		echo "i am getting tired of saying stop that."
	elif [[ $ctrlc_count == 5 ]]; then
		echo "once more and i quit."
	else
		echo "that's it. i quit."
		exit
	fi
}
trap no_ctrlc SIGINT

while true
do
	echo sleeping
	sleep 1
done
