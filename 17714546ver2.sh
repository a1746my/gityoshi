#!/bin/sh

echo "please enter number:"
read a
expr $a + 1 > /dev/null 2>&1
RETa=$?
echo "please enter another number"
read b
expr $b + 1 > /dev/null 2>&1
RETb=$?

if [ $RETa -lt 2 -a $RETb -lt 2 ];then 

	if [ $a -gt $b ]; then

	while [ $b -ne 0 ];do
	remainder=$(( $a % $b ))
	a=$b
	b=$remainder
	done

	echo "Greatest common divisor is:" $a

	else

	while [ $a -ne 0 ]; do
	remainder=$(( $b % $a ))
	b=$a
	a=$remainder
	done

	echo "Greatest common divisor is:" $b

	fi
else
 echo "please enter INTEGER number. Numeric and character are not accepted."

fi
