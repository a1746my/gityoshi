#!/bin/sh

echo "please enter number:"
read a
echo "please enter another number"
read b

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

