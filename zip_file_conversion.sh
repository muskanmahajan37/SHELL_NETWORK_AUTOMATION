for i in *;
do 
	echo "$i" >> "test.txt"
	tar -czf ${i%.*}.tar.gz $i
done

echo "*************************"
echo "converted zip files are "
echo "*************************"
k=`cat test.txt`
for j in $k;
do	
	echo "${j%.*}.tar.gz"
done
echo "*************************"

l=`cat test.txt`
for m in $l;
do
	rm -f $l
done


rm -f test.txt
echo "programme execution completed"