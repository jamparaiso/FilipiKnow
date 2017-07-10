local sqlite = require ( "sqlite3" )local M = {}local function getPName()	local path = system.pathForFile ("filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql	local playerName	local myTable = {} 		sql = "SELECT * FROM player_Data WHERE status  = '1'"		local totalRows = 0	for row in db:nrows(sql) do		totalRows = totalRows +1
		myTable = row
	end		if (totalRows == 0) then		playerName = " "		print ("no active player")	else			playerName = myTable.player_Name		print ( "current active player: " .. playerName )			end		db:close()		return playerName			endM.getPName = getPName	return M