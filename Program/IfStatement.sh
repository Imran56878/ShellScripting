echo "Enter any number :"
read num1
echo "Enter second number :"
read num2
if [ $num1 == $num2 ]
then 
    echo "you are within the loop"
else 
    echo "you are outside the loop"
fi
echo "Enter a string :"
read str1 
echo "Enter second string :"
read str2
if [ $str1 == $str2 ]
then 
     echo "String are equal"
else
     echo "string are not equal"
fi
if [ $num1 -gt $num2 ]
then 
     echo "you are within the loop and num1 is grater "
else
     echo "It is less than are equal "
fi
