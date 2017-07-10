local sqlite =require ( "sqlite3" )

local M = {}

function createEvent()
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
 
local sql = [[
	CREATE TABLE IF NOT EXISTS eventQuestions (
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
 print ( "successfully created eventQuestionsDB..." )
end

M.createEvent = createEvent	

return M