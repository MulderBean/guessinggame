#!/bin/sh

echo "[Welcome to The Best Bash Guessing Game!!!]"

clear
echo "Can you guess how many files are in the current directory ? "

dirnumber=$(pwd | ls | wc -l)

until [[ $response -eq $dirnumber ]]; do
	read response
	if [[ $response -gt $dirnumber ]]
	then
		echo "Your guess of $response is too high, try again"
	elif [[ $response -lt $dirnumber ]]
	then
		echo "Your guess of $response is too low, try again"
	fi
done

echo "Your guess of $response is correct"
echo "You Won!"
