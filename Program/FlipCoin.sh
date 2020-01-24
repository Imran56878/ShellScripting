declare -i add=1 
declare -i heads=0 
declare -i tails=0 
for((i=0;i<10;i++))
 { 
rand=$((1+RANDOM%10))
if [ $rand -gt 5 ]
then
     heads=$heads+$add
else
     tails=$tails+$add
fi
echo "random number is :" $rand
}
echo "heads :" $heads
echo "tails :" $tails
