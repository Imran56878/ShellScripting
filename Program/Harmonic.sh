echo "Enter a number "
read num
declare -i a=$num
for((i=1;i<=$a;i++))
{
echo "1/"$i
if [ $i -lt $a ]
 then
      echo "+"
   fi

}
