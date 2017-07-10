local sqlite =require ( "sqlite3" )

local M = {}

function createPeople()
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
 
local sql = [[
	CREATE TABLE IF NOT EXISTS peopleQuestions (
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
 print ( "successfully created peopleQuestionsDB..." )
end

M.createPeople = createPeople	

return M