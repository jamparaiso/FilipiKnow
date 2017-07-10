local sqlite = require ("sqlite3")

local M = {}

function createPlayer()
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
 
local sql = [[
	CREATE TABLE IF NOT EXISTS player_Data (
	player_ID INTEGER PRIMARY KEY,	player_Name,
	coins,
	hints,
	people_level,
	people_answered,
	places_level,
	places_answered,
	food_level,
	food_answered,
	events_level,
	events_answered,
	status
	);
	]]
 
 db:exec(sql)
 db:close()
 print ( "successfully created playerDB..." )
end

M.createPlayer = createPlayer	

return M