--get questions based on the player selected level

local sqlite = require ( "sqlite3" )
local myData = require ( "myData" )

local M = {}

local function getSelectedQuestions()
	
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	local selectedCategory = myData.selectedCategory
	local selectedLevel = myData.selectedLevel
	
	print ("selected category: " .. selectedCategory)
	print ( "selected level: " .. selectedLevel )
	
	local myTable = {}
	local result = {}
	local sql
	local tblName
	
	if selectedCategory == 1 then
		tblName = "peopleQuestions"
	elseif selectedCategory == 2 then
		tblName = "placeQuestions"
	elseif selectedCategory == 3 then
		tblName = "foodQuestions"
	elseif selectedCategory == 4 then
		tblName = "eventQuestions"
	end
	
	sql = "SELECT * FROM " .. tblName .. " WHERE level = " .. selectedLevel

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

	print ("query result: " .. #result )

	return result
	
end	
M.getSelectedQuestions = getSelectedQuestions



local function loadSelectedQuestions(qID,category)
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	
	local myTable = {}
	local result = {}
	local sql
	local tblName	
	
	local selCat

	if (category == 1) then 
		selCat = "peopleQuestions"
	elseif (category == 2) then
		selCat = "placeQuestions"
	elseif (category == 3 ) then
		selCat = "foodQuestions"
	elseif(category == 4) then	
		selCat = "eventQuestions"	
	end
	
	print ( selCat )
	
	print ( "question ID ".. qID )
	
	sql = "SELECT * FROM " .. selCat .. " WHERE question_ID = " .. qID
	
	for row in db:nrows(sql) do
		myTable = row
	end
	
	db:close()
	
	result = myTable

	print ("query result: " .. #result )
	print (myTable.img_Path)

	return result
		
	
end
M.loadSelectedQuestions = loadSelectedQuestions	

return M
