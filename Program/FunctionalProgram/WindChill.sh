echo "Enter t temp and v speed :" 
read t
read v
num=50
v1=120
v2=3
if [ $t -lt $num ]
  then	
         if [ $v -le $v1 -a $v -ge $v2 ]
           then
             perl -e "print 35.74 + 0.625 * $t +(( 0.4275 * $t -35.75 )) * (( $v ** 0.16 ))"
           else	
		echo speed is not under the condition 
        fi  
         else 
            echo "Velocity is not valid"
  fi
