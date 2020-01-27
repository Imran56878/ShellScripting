echo "Enter trials stack goal "
 read trials
 read stack
 read goals
 win=0
 bets=0
for(( i=0;i<$trials;i++ ))
{
 cash=$stack
#echo "$i trials"
echo  "cash is :" $cash
  while [ $cash -gt 0 -a $cash -lt $goals ]
   do
     
      bets=$(( bets+1 ))
      rand=$((1+RANDOM%10))
      echo  "random value :"$rand	
      echo  " bets is :" $bets
      if [ $rand -gt 5 ]
        then
           cash=$(( cash+1 ))
          echo "cash is plus $cash"
        else
          cash=$(( cash-1 ))
          echo "cash is min $cash"
      fi
   done
    if [ $cash == $goals ]
     then
          win=$(( win+1 ))
    fi
  #done
}
echo "win is : " $win
echo "total bets is :" $bets
