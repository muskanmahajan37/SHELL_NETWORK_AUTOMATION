exec 1> /gpfs01/dev/bi/code/BI_MRDM/logs/`echo $0 | cut -d '/' -f8 | sed 's/\.sh//g'`_$(date +"%Y%m%d_%H%M%S").log 2>&1
input_file=$1
do_Mail()
{
echo "********* Sending Mail*******************"

temp_mail="/gpfs01/dev/bi/code/BI_MRDM/scripts/mails/logs_temp.tmp"
attachment="/gpfs01/dev/bi/code/BI_MRDM/logs/*task_1*"
	m_file=${src_nm}
	DT=`date`
	SUB="Practise"
	TO=Rohan.kumarDube@anthem.com;  
	CC=Rohan.kumarDube@anthem.com;
	echo "hi guys find the logs attached" >  ${temp_mail}`
       	mailx -s "${SUB} ${DT}" -c "${CC}" ${TO} -a  ${attachment} <${temp_mail}
	rm -f ${temp_mail}
echo "Mailed the details succefully"
return 0;
}


cat $input_file | rev > temp1.txt
paste  $input_file temp1.txt > temp2.txt
rm -rf $input_file 
rm -rf temp1.txt
mv temp2.txt $input_file
do_Mail