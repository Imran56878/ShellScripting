echo "length of array is 9"
declare -A arr[9]
for((i=0;i<9;i++))
{
arr[$i]=0
}

function isWon( ){
m1=$(( ${arr[0]}+${arr[1]}+${arr[2]} ))
m2=$(( ${arr[0]}+${arr[3]}+${arr[6]} ))
m3=$(( ${arr[0]}+${arr[4]}+${arr[8]} ))
m4=$(( ${arr[3]}+${arr[4]}+${arr[5]} ))
m5=$(( ${arr[6]}+${arr[7]}+${arr[8]} ))
if [ $m1 -eq 3 -o $m2 -eq 3 -o $m3 -eq 3 -o $m4 -eq 3 -o $m5  -eq 3 ]
   then
       echo "player 1 is winner"
     exit
 elif [ $m1 -eq -3 -o $m2 -eq -3 -o $m3 -eq -3 -o $m4 -eq -3 -o $m5 -eq -3 ]
    then
      echo "player 2 is winner "
      exit
  else
    echo "continue it"
 fi
}

function print()
{
  echo ${arr[0]} "|" ${arr[1]} "|" ${arr[2]}
  echo ${arr[3]} "|" ${arr[4]} "|" ${arr[5]}
  echo ${arr[6]} "|" ${arr[7]} "|" ${arr[8]}

}

count=0
#echo ${arr[@]}
#echo "length is ${#arr[@]}"
read -p "Enter the player " player
while [ $count -lt 9 ]
do
  echo "hello"
  if [ $player == 1 ]
   then
     read -p "Enter a number between 0 to 8 " num
       if [ ${arr[$num]} -eq 0 ]
        then
            #echo "hi"
           arr[$num]=1
            print
            clear 
            isWon
            player=2
             count=$(( count+1))
         else
            echo "$num index is already filled enter another"
            player=1
        fi


else
    rand=$((RANDOM%10))
    if [ ${arr[$rand]} -eq 0 ]
      then
           echo "rand value is $rand"
          arr[$rand]=-1
           print
           isWon
          player=1
          count=$(( count+1 ))

       else 
           player=2
         fi
fi
done
echo "Game End"
