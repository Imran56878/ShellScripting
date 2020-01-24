echo "Enter a number "
read num
for((i=2;i<$num;i++))
{
while [ `expr $num % $i` -eq 0 ]
do
    num=`expr $num / $i`
echo $i
done
}
if [ $num -gt 2 ]
 then 
      echo $num
     fi

