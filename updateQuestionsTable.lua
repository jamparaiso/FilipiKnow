--updates the questions table

local sqlite = require ( "sqlite3" )
local myData = require ( "myData" )

local M = {}

local function updateQDB(selectedCat, qID, hintShow, status)
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql

	local selCat

	if (selectedCat == 1) then 
		selCat = "peopleQuestions"
	elseif (selectedCat == 2) then
		selCat = "placeQuestions"
	elseif (selectedCat == 3 ) then
		selCat = "foodQuestions"
	elseif(selectedCat == 4) then	
		selCat = "eventQuestions"	
	end
	
	sql = "UPDATE " .. selCat .. " SET hintShow = " .. hintShow .. ", status = " .. status .. " WHERE question_ID = " .. qID

	print (sql)
	db:exec(sql)	
	db:close()
	print ("successfully updated")
end
M.updateQDB = updateQDB


local function updateStatus(selectedCat, qID)
	local path = system.pathForFile ("filipiKnowDB.sqlite" , system.DocumentsDirectory)
	local db = sqlite.open(path)
	local sql

	local selCat

	if (selectedCat == 1) then 
		selCat = "peopleQuestions"
	elseif (selectedCat == 2) then
		selCat = "placeQuestions"
	elseif (selectedCat == 3 ) then
		selCat = "foodQuestions"
	elseif(selectedCat == 4) then	
		selCat = "eventQuestions"	
	end
	
	sql = "UPDATE " .. selCat .. " SET status = 0 WHERE question_ID = " .. qID

	print (sql)
	db:exec(sql)
	
--updates the number or answered questions
	local playID = myData.playID
	local selCatAns
	local upAns
	local peopleAns = myData.peopleAns
	local placeAns = myData.placeAns
	local foodsAns = myData.foodsAns
	local eventsAns = myData.eventAns
	if (selectedCat == 1) then 
		selCatAns = "people_answered"
		upAns = peopleAns + 1
	elseif (selectedCat == 2) then
		selCatAns = "places_answered"
		upAns = placeAns + 1
	elseif (selectedCat == 3 ) then
		selCatAns = "food_answered"
		upAns = foodsAns + 1
	elseif(selectedCat == 4) then	
		selCatAns = "events_answered"
		upAns = eventsAns + 1
	end
	
	sql = "UPDATE player_Data " .. " SET " .. selCatAns .. " = " .. upAns .. ", " .. selCatLevel .. " = " .. upLevel .. " WHERE player_ID = " .. playID
	
	print ( sql )
	db:exec(sql)	
	db:close()
	print ("successfully updated")
end
M.updateStatus = updateStatus

return M