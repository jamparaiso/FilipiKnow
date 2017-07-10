local sqlite =require ( "sqlite3" )

local M = {}

function createPlace()
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
 
local sql = [[
	CREATE TABLE IF NOT EXISTS placeQuestions (
	question_ID INTEGER PRIMARY KEY,
	answer,
	img_Path,
	hint,
	trivia,	hintShow INTEGER,
	level INTEGER,
	status INTEGER
	);
	]]
 
 db:exec(sql)
 db:close()
 print ( "successfully created placesQuestionsDB..." )
end

M.createPlace = createPlace	

return M