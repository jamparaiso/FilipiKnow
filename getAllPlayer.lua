local sqlite = require ( "sqlite3" )local M = {}local function getAllPlayerData()	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	local myTable = {}
	local result = {}	local sql		sql = "SELECT * FROM player_Data"				for row in db:nrows(sql) do
			myTable[#myTable+1] =
			{				playerName = row.player_Name,				coins = row.coins,				peopleLevel = row.people_level,				peopleAns = row.people_answered,				placeLevel = row.places_level,				placeAns = row.places_answered,				foodLevel = row.food_level,				foodAns = row.food_answered,				eventLevel = row.events_level,				eventAns = row.events_answered,				status = row.status			}			
			end	
	
		db:close()

	
	result = myTable

	return result		endM.getAllPlayerData = getAllPlayerDatareturn M			