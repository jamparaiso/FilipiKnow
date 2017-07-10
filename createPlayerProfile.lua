
local sqlite = require ( "sqlite3" )

local M = {}

local function createPlayerProfile(pName)
	local path = system.pathForFile ("filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql
	
	local playerName = pName
	
	--local totalRows= 0
	--		for row in db:nrows("SELECT * FROM player_Data") do
	--		totalRows = totalRows +1
	--end

	--if (totalRows == 0) then

		sql = [[
			INSERT INTO player_Data("player_Name","coins", "hints","people_level","people_answered","places_level","places_answered","food_level","food_answered","events_level","events_answered","status")
		VALUES ("]] .. playerName ..
	[[","]] .. 5 ..	
	[[","]] .. 0 ..
	[[","]] .. 1 ..
	[[","]] .. 0 ..
	[[","]] .. 1 ..
	[[","]] .. 0 ..				
	[[","]] .. 1 ..
	[[","]] .. 0 ..
	[[","]] .. 1 ..
	[[","]] .. 0 ..
	[[","]] .. 1 ..		
			[[");]]
			db:exec(sql)

	--end
	print ( "successfully created player profile" )
db:close()		
end
M.createPlayerProfile=createPlayerProfile

return M