SUB=hi;
DT=nibba;
TO=<to_mail>;
CC=<to_mail>;
for i in {0..100000}
do
	echo "hi nibba" > temp_file
	mailx -s "$SUB $DT" -c "$CC" $TO < temp_file
	rm temp_file
done




