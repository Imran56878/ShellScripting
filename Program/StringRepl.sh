echo "Enter a name string "
read name
length=${#name}
if [ $length -lt 3 ]
then 
      echo " Length of string  is not valid "
else
     echo ${name/$name/Imran Khan}
fi

#echo $length
#echo "last step :" $name
