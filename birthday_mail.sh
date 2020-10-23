SUB=hi;
DT=nibba;

TO=${tomail_address}
CC=${ccmail_address}
echo "hi nibba" > temp_file;
mailx -s "$SUB $DT" -c "$CC" $TO < temp_file;
rm temp_file;
