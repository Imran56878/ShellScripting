echo  "Enter the year"
read year
if [ `expr $year % 4` -eq 0 ]
then

      if [ `expr $year % 100` -eq 0 ]

          then


                if [ `expr $year % 400` -eq 0 ]
                   then
                         echo "This is leap year"
                       else
                             echo "This is not leap year 400"
                        fi
            else
                 echo " This is leap year"
              fi
      else
           echo "This is not leap year "
        fi
