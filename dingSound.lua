local myData = require ( "myData" )

local M = {}

local function timeSound()

	local enableSound = myData.enableSound
	local tapSound = myData.buzzSound

		if enableSound == true then
			audio.play (tapSound)
		end
			
end
M.timeSound = timeSound
return M
