echo "Enter x and y axis value :"
read x
read y
a=2
num=`expr $[ $x**$a+$y**$a ]`
z=`echo - | awk '{print sqrt('$num')}'`
echo "Distance :" $z

