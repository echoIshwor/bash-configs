#BRIGHTNESS SCRIPTS



if [ ! -z $1 ]
then
 	bright_value=`cat /sys/class/backlight/intel_backlight/brightness`

	if [ $1 == '+' ]
	then
		if [ $bright_value -le 8 ]
		then
			bright_value=`expr $bright_value + 2`
			echo $bright_value >> /sys/class/backlight/intel_backlight/brightness
		else
		       echo -e "\e[101mMAX BRIGHTNESS REACHED!!!\e[0m"
		
		fi
	elif [ $1 == '-' ]
	then
		if [ $bright_value -ge 6 ]
                then
                        bright_value=`expr $bright_value - 5`
                        echo $bright_value >> /sys/class/backlight/intel_backlight/brightness
                else
                        echo -e "\e[101mMIN. BRIGHTNESS REACHED!!!\e[0m"
                
                fi

	else
		echo -e "\e[101mONLY TAKES + AND - AS ARGUMENT\e[0m"
	fi
else
	echo -e "\e[101mNO ARGUMENTS GIVEN!!\e[0m"
fi

