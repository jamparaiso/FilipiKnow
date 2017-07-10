local myData = require ( "myData" )local M ={}local function checkBackMusic()	local enableMusic = myData.enableMusic	local backMusic = myData.backMusic		if enableMusic == true then
		if myData.backMusicHandler == nil then
		 	local backMusicHandler
		 	print ("---------------PLAY BACKGROUND MUSIC")
	 		backMusicHandler = audio.play(backMusic, {loops=-1} )
	 		myData.backMusicHandler = backMusicHandler
	 		print ("---------------BACKGROUND MUSIC CHANNEL: " .. backMusicHandler)
		end	  
	end		endM.checkBackMusic =checkBackMusicreturn M