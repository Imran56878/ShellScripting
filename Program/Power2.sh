echo "Enter a number "
read num
echo This is power series of 2
a=2
declare -i n=$num
for((i=0;i<$n;i++))
{
echo  " "$[ $a**$i ]
}
