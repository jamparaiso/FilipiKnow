--get player Data

local sqlite = require ( "sqlite3" )
local myData = require ( "myData" )

local M = {}

local function loadPlayerData()
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	
	local myTable = {}
	local result = {}
	local sql
	local tblName	

	
	sql = "SELECT * FROM player_Data WHERE status = '1'"
	
	for row in db:nrows(sql) do
		myTable = row
	end
	
	db:close()
	
	result = myTable
	
	print ( "player query: " .. #result )

	return result
		
	
end
M.loadPlayerData = loadPlayerData

return M 