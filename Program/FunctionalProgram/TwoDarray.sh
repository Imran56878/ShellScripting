echo "Enter the length of 2d array"
read m 
read n
declare -A arr[$m,$n]
for((i=0;i<$m;i++))
{
 for((j=0;j<$n;j++))
{
read arr[$i,$j]
}
}
echo "Entered element :"
for((i=0;i<$m;i++))
{
 for((j=0;j<$n;j++))
{
echo ${arr[$i,$j]}
}
}

