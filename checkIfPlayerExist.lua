local sqlite = require ( "sqlite3" )local M = {}local function checkPlayerExist()	local path = system.pathForFile ("filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql		local totalRows = 0
		for row in db:nrows("SELECT * FROM player_Data") do
			totalRows = totalRows +1
		end				if (totalRows == 0) then			return false				else			return true			end	endM.checkPlayerExist = checkPlayerExistreturn M