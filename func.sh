#date = 2/7/23
#echo today date is ${date}

#date=$(date+%f)
#echo today date is $(date)

#Arth=$
#((2+5*8))
#echo Arth = ${Arth}

#echo scriptname - $0
#echo first argument - $1
#echo second argument - $2
#echo all arguments - $* 0r $@
#echo no. 0f arguments - $#
#
#echo -e "sravya\t\divya\t\t\sai"
#echo c - $c
fruit=$1

 case fruit in
 apple)
   echo price - 5$
   ;;
 bananna)
   echo price - 2$
   ;;
 *)
   echo fruit is not found
   ;;
 esac