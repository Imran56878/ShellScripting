echo "Enter the value ofr a, b,c :"
read a b c
delta=$(( $b * $b - 4 * $a * $c ))
if [ $delta -gt 0 ]
  then
       #echo "delta is :" $delta
       #sq=`echo - | awk '{print sqrt('$delta')}'`
       #echo "sqrt is :" $sq
        root1=$( echo "$b" "$delta" "$a" |awk '{print (-$1+ sqrt($2))/2*$3}' )
        root2=$( echo "$b" "$delta" "$a" |awk '{print (-$1- sqrt($2))/2*$3}')
        echo "root1 :"$root1
        echo "root2 :" $root2
     else
      echo "imaginary number"
 fi
