local sqlite = require ( "sqlite3" )
local myData = require ( "myData" )
local M = {}

local function levelOneAns()
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)	
	local myTable = {}
	local result = {}
	local sql
	local tblCat	local selCat	selCat = myData.selectedCategory	
	if (selCat == 1) then
		tblCat = "peopleQuestions"
	elseif (selCat == 2) then
		tblCat = "placeQuestions"
	elseif (selCat == 3) then
		tblCat = "foodQuestions"
	elseif (selCat == 4) then
		tblCat = "eventQuestions"			
	end
	
	sql = "SELECT * FROM " .. tblCat .. " WHERE level = 1 AND status = 0"
	
		for row in db:nrows(sql) do
		myTable[#myTable+1] =
		{
			questionID = row.question_ID,
			answer = row.answer,
			imgPath = row.img_Path,
			hint = row.hint,
			trivia = row.trivia,
			level = row.level,
			status = row.status,
		}
	end
	
	db:close()
	
	result = myTable
	
	print ("answered question: " .. #result )
	
	return result
	
end
M.levelOneAns = levelOneAns

return M