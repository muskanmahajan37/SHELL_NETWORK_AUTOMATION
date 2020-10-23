#!/bin/bash



MATRIX="0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
#MATRIX="|"
# ==> Password will consist of alphanumeric characters.
echo "PLEASE SELECT THE LENGTH OF THE PASSWORD : " 
read LENGTH
# ==> May change 'LENGTH' for longer password.

n = 1

#echo ${#MATRIX}
#echo $RANDOM%${#MATRIX}
#echo $(($RANDOM%${#MATRIX}))
#echo $pass${MATRIX:$(($RANDOM%${#MATRIX})):1}
while [ "$n" -le "$LENGTH" ]
# ==> Recall that := is "default substitution" operator.
# ==> So, if 'n' has not been initialized, set it to 1.
do
	PASS="$PASS${MATRIX:$(($RANDOM%${#MATRIX})):1}"
	# ==> Very clever, but tricky.

	# ==> Starting from the innermost nesting...
	# ==> ${#MATRIX} returns length of array MATRIX.

	# ==> $RANDOM%${#MATRIX} returns random number between 1
	# ==> and [length of MATRIX] - 1.

	# ==> ${MATRIX:$(($RANDOM%${#MATRIX})):1}
	# ==> returns expansion of MATRIX at random position, by length 1. 
	# ==> See {var:pos:len} parameter substitution in Chapter 9.
	# ==> and the associated examples.

	# ==> PASS=... simply pastes this result onto previous PASS (concatenation).

	# ==> To visualize this more clearly, uncomment the following line
	#              echo "$PASS"
	# ==> to see PASS being built up,
	# ==> one character at a time, each iteration of the loop.

	n+=1
	# ==> Increment 'n' for next pass.
done

echo "$PASS"      # ==> Or, redirect to a file, as desired.

exit 0