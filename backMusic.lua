local myData = require ( "myData" )
		if myData.backMusicHandler == nil then
		 	local backMusicHandler
		 	print ("---------------PLAY BACKGROUND MUSIC")
	 		backMusicHandler = audio.play(backMusic, {loops=-1} )
	 		myData.backMusicHandler = backMusicHandler
	 		print ("---------------BACKGROUND MUSIC CHANNEL: " .. backMusicHandler)
		end	  
	end	