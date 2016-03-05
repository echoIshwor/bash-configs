

   #!/bin/bash

			   

		# get current hour (24 clock format i.e. 0-23)
		hour=$(date +"%H")
		min=$(date +"%M")

		 # if it is midnight, throw midnight alert.
		 if [ $hour -eq 00 -a $min -eq 00 ]
		 then
		 notify-send -u critical -i "notification-message-IM" 'AI BroadCast:  Jarvis Here!!' 'mid night alert'


		 elif [ $hour -eq 01 -a $min -eq 00 ]
		 then
		 notify-send -u critical -i "notification-message-IM" 'AI BroadCast:   Jarvis Here!!' 'drink some water before you crash'

                 elif [ $hour -eq 02 -a $min -eq 00 ]
                 then
                  notify-send -u critical -i "notification-message-IM" 'AI BroadCast:   Jarvis Here!!' 'drink some water before you crash'


                 elif [ $hour -eq 03 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast:   Jarvis Here!!' 'Enough with these computing stuffs!Take some rest'

	
                 elif [ $hour -eq 04 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'its 4 in the morning and you still awake?'


                 elif [ $hour -eq 05 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'get your teeth brushed,Have some coffee'

                 elif [ $hour -eq 06 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'ask for another cup of coffee'

                 elif [ $hour -eq 07 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'got any plans for the day? please do let me know'

                 elif [ $hour -eq 08 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' '-> coffee alert!! Its 8 in the morning'

	
                 elif [ $hour -eq 09 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'stretch your hands and body! I noticed you have spent too much of time computing'

	
                 elif [ $hour -eq 10 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'Arent you Hungry? -> its 10:00 am'

		
                 elif [ $hour -eq 11 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'write something in your sticky notes! its empty'

                 elif [ $hour -eq 12 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'its 12 noon! Havent you forgot something,eh?  ->drink water'


                 elif [ $hour -eq 13 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'well its 1 pm! Have fun computing '


                 elif [ $hour -eq 14 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'lunch time alert! Freshen up a little bit'


                 elif [ $hour -eq 15 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'still havent taken your lunch? seriously??'

	
		
                 elif [ $hour -eq 16 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'drink some water first then order your caffine'

                      
	         elif [ $hour -eq 17 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'stand up, stretch your body, take a little walk to outside!-> drink some water'


		
                 elif [ $hour -eq 18 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'Its getting dark.Plug earplugs,play pink floyd,Bring your as* home'

		
                 elif [ $hour -eq 19 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'Give yourself some rest! you have been working all day long'



   
                 elif [ $hour -eq 20 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'you bookmarked this time for some sort of a Movie! Have fun! '


		
                 elif [ $hour -eq 21 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'Isnt this your Usual Dinner Time? its 9:00'


		
                 elif [ $hour -eq 22 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast: Jarvis Here!!' 'Spent this Hour the way you want! This is your one true  moment'



		
                 elif [ $hour -eq 23 -a $min -eq 00 ]
                 then
                 notify-send -u critical -i "notification-message-IM" 'AI BroadCast:   Jarvis Here!!' 'Dont you miss your strong black coffee? Gonna be a busy night '



		# else 
		 #notify-send -u critical -i "notification-message-IM" 'AI BroadCast:   Jarvis Here' 'Welcome Back Ishwor! Would you like to assign me with something?'

		 fi

