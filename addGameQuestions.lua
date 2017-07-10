
local sqlite = require ( "sqlite3" )
local questionTable = require ( "questionTable" )

local M = {}


--populate placeQuestions in DB
local function addPlaceQuestion()
	local path = system.pathForFile ("filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql
	local placeTable = {}
	placeTable = questionTable.placesQuestion
	
	print ("total places questions: " .. #placeTable)
	
	local totalRows = 0
		for row in db:nrows("SELECT * FROM placeQuestions") do
			totalRows = totalRows +1
		end
		
	if (totalRows == 0) then
		for z=1, #placeTable do
		sql = [[
			INSERT INTO placeQuestions("answer", "img_Path","hint","trivia","hintShow","level","status")
		VALUES ("]] .. placeTable[z].answer ..
			[[","]] .. placeTable[z].imagePath ..
			[[","]] .. placeTable[z].hint ..
			[[","]] .. placeTable[z].trivia ..			[[","]] .. placeTable[z].showHint ..	
			[[","]] .. placeTable[z].level ..	
			[[","]] .. placeTable[z].status ..
			[[");]]
			db:exec(sql)
		end	
	end
db:close()		
end
M.addPlaceQuestion = addPlaceQuestion	



--populate peopleQuestions table in DB
local function addPeopleQuestion()
	local path = system.pathForFile ( "filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql
	local peopleTable ={}
	peopleTable = questionTable.peopleQuestion
	
	print ( "total people questions: "..#peopleTable )
	
	local totalRows = 0
		for row in db:nrows("SELECT * FROM peopleQuestions") do
			totalRows = totalRows + 1
		end
		
	if (totalRows == 0) then
		for z=1, #peopleTable do
		sql = [[
			INSERT INTO peopleQuestions("answer", "img_Path","hint","trivia","hintShow","level","status")
		VALUES ("]] .. peopleTable[z].answer ..
			[[","]] .. peopleTable[z].imagePath ..
			[[","]] .. peopleTable[z].hint ..
			[[","]] .. peopleTable[z].trivia ..			[[","]] .. peopleTable[z].showHint ..	
			[[","]] .. peopleTable[z].level ..	
			[[","]] .. peopleTable[z].status ..
			[[");]]
			db:exec(sql)
		end	
	end	
db:close()	
end
M.addPeopleQuestion = addPeopleQuestion


--populate foodQuestion DB
local function addFoodQuestion()
	local path = system.pathForFile ( "filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql
	local foodTable ={}
	foodTable = questionTable.foodQuestion
	
	print ( "total food questions: "..#foodTable )
	
	local totalRows = 0
		for row in db:nrows("SELECT * FROM foodQuestions") do
			totalRows = totalRows + 1
		end
		
	if (totalRows == 0) then
		for z=1, #foodTable do
		sql = [[
			INSERT INTO foodQuestions("answer", "img_Path","hint","trivia","hintShow","level","status")
		VALUES ("]] .. foodTable[z].answer ..
			[[","]] .. foodTable[z].imagePath ..
			[[","]] .. foodTable[z].hint ..
			[[","]] .. foodTable[z].trivia ..			[[","]] .. foodTable[z].showHint ..	
			[[","]] .. foodTable[z].level ..	
			[[","]] .. foodTable[z].status ..
			[[");]]
			db:exec(sql)
		end	
	end	
db:close()	
end
M.addFoodQuestion = addFoodQuestion	


--populate eventQuestion DB
local function addEventQuestion()
	local path = system.pathForFile ( "filipiKnowDB.sqlite",system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql
	local eventTable ={}
	eventTable = questionTable.eventQuestion
	
	print ( "total event questions: "..#eventTable )
	
	local totalRows = 0
		for row in db:nrows("SELECT * FROM eventQuestions") do
			totalRows = totalRows + 1
		end
		
	if (totalRows == 0) then
		for z=1, #eventTable do
		sql = [[
			INSERT INTO eventQuestions("answer", "img_Path","hint","trivia","hintShow","level","status")
		VALUES ("]] .. eventTable[z].answer ..
			[[","]] .. eventTable[z].imagePath ..
			[[","]] .. eventTable[z].hint ..
			[[","]] .. eventTable[z].trivia ..			[[","]] .. eventTable[z].showHint ..	
			[[","]] .. eventTable[z].level ..	
			[[","]] .. eventTable[z].status ..
			[[");]]
			db:exec(sql)
		end	
	end	
db:close()
end	
M.addEventQuestion = addEventQuestion

return M