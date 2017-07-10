--update player data

local sqlite = require ( "sqlite3" )

local M = {}

local function updatePlayer(coin)
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql
	
	sql = "UPDATE player_Data SET coins = " .. coin .. " WHERE status = '1'"
	
	print (sql)
	db:exec(sql)
	db:close()
	print ("successfully updated")

end
M.updatePlayer = updatePlayer

return M