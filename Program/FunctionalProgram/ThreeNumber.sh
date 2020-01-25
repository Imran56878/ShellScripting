echo "Enter the length of array "
read n
#declare -A arr[&n]
for((i=0;i<$n;i++))
{
read arr[$i]
}
# echo ${a[@]}
for((i=0;i<$n;i++))
{
 for((j=1;j<$n;j++))
  {
   for((k=2;k<$n;k++))
    {
     if [ $i -lt $j  -a  $j -lt $k ]
      then
              num=$(( arr[$i]  +  arr[$j]  +  arr[$k] ))
           if [ $num -eq 0 ] 
              then
                   echo "i : ${arr[$i]}  j :${arr[$j]} k :${arr[$k]} "
                  
            fi
        fi
     }
    }
  }


