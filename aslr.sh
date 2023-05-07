#!/bin/bash
echo
echo "input 0. off | 1. on | 2. on+brk c. cat ?"
read number
echo "input = $number"

if [ "$number" == "0" ]
then
        echo "ASLR = 0 (OFF) "
        echo 0 | sudo tee /proc/sys/kernel/randomize_va_space
elif [ "$number" == "1" ]
then 
        echo "ASLR = 1 (ON) {stack, heap, lib, etc}"
        echo 1 | sudo tee /proc/sys/kernel/randomize_va_space
    
elif [ "$number" == "2" ] 
then 
        echo "ASLR = 2 (ON) {stack, heap, lib, etc, +brk}"
        echo 2 | sudo tee /proc/sys/kernel/randomize_va_space
elif [ "$number" == "c" ]
then 
        echo "cat ASLR"
        sudo cat /proc/sys/kernel/randomize_va_space
	aslr.sh
else 
        echo "exit"
        exit
fi
