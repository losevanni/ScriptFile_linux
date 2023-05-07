#!/bin/bash
echo "now is gdb " | cat ~/.gdbinit
echo
echo "input 0.q 1.peda 2.pwn ?"

read gdbname
echo "input is $gdbname"

if [ "$gdbname" == "peda" ] || [ "$gdbname" == "1" ]
then 
	echo "(gdb) => PEDA"
	echo "source ~/peda/peda.py" > ~/.gdbinit
	echo "#source /home/vanni/pwndbg/gbdinit.py" >> ~/.gdbinit

elif [ "$gdbname" == "pwn" ] || [ "$gdbname" == *pwndbg* ] || [ "$gdbname" == "2" ]
then
	echo "(gdb) => PWNDBG"
	echo "#source ~/peda/peda.py" > ~/.gdbinit
	echo "source /home/vanni/pwndbg/gdbinit.py" >> ~/.gdbinit
	
elif [ "$gdbname" == "q" ] || [ "$gdbname" == "Q" ] || [ "$gdbname" == "exit" ] || [ "$gdbname" == "quit" ] || [ "$gdbname" == "0" ]
then 
	echo "exit"
	exit
else 	
	echo
	echo "re input"
	echo 
	gdbch.sh
fi

