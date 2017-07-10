local myData = require ( "myData" )local M = {}local function checkSound()	local enableSound = myData.enableSound	local tapSound = myData.tapSound		if enableSound == true then
			audio.play (tapSound)
		end			endM.checkSound = checkSoundreturn M
