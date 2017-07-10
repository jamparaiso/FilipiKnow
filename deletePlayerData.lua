local sqlite = require ( "sqlite3" )local createPlayerProfile = require ( "createPlayerProfile" )local M = {}local function deletePlayerDat(pName)	local path = system.pathForFile ("filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql	local playerID	local myTable = {}		sql = "SELECT * FROM player_Data WHERE status = '1'"		local totalRows= 0
			for row in db:nrows(sql) do
			totalRows = totalRows +1			myTable = row 
	end		print (totalRows)

	if (totalRows == 0) then		print ("no player data")		createPlayerProfile.createPlayerProfile(pName)	else		print ("player data found")		playerID = myTable.player_ID		print ("playerID:" .. playerID)		sql = "UPDATE player_Data SET status = '0' WHERE player_ID = " .. playerID		db:exec(sql)		createPlayerProfile.createPlayerProfile(pName)	end		endM.deletePlayerDat = deletePlayerDatreturn M