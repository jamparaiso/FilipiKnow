print ( "resetScreen..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ("tapSound" )
local backMusic = require ( "backMusic" )
local dropQuestionsTable = require ( "dropQuestionsTable" )
local createPlaceDB = require ( "createPlaceDB" )
local createPeopleDB = require ( "createPeopleDB" )
local createFoodDB = require ( "createFoodDB" )
local createEventsDB =require ( "createEventsDB" )
local addGameQuestions =require ( "addGameQuestions" )
local checkIfPlayerExist = require ( "checkIfPlayerExist" )
local deletePlayerData = require ( "deletePlayerData" )
local scene = storyboard.newScene()

--variable declaration
--screen height and width, this was declared in myData.lua
local _H = myData._H
local _W = myData._W
local _HH = myData._HH
local _HW = myData._HW

local screenGroup
local buttonGroup = display.newGroup ( )
local background
local logo
local loadingTxt
local myTimer
local checkPlayer

local function checkDropTable()
		if (checkPlayer == true) then
			print ( "questions table will be dropped" )
			dropQuestionsTable.dropTbl()
			
			--create game databases

			createPlaceDB.createPlace()
			createPeopleDB.createPeople()
			createFoodDB.createFood()
			createEventsDB.createEvent()

			--add questions in the database
			addGameQuestions.addPeopleQuestion()
			addGameQuestions.addPlaceQuestion()
			addGameQuestions.addEventQuestion()
			addGameQuestions.addFoodQuestion()			
			
		end
end	

function scene:createScene(event)
	screenGroup = self.view
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	logo = display.newImageRect ( "images/filipiKnowLogo.png"  , 260, 126 )
	logo.x = 160 ; logo.y = 220
	
	loadingTxt  = display.newText(  "Please wait...", 115, 310, native.systemFont, 15  )
	loadingTxt:setTextColor ( 0, 0, 0 )
	
	 
	checkPlayer = checkIfPlayerExist.checkPlayerExist()
	print ( checkPlayer ) 	
	
	screenGroup:insert(background)
	screenGroup:insert(logo)
	screenGroup:insert(loadingTxt)
end

function scene:enterScene(event)
	checkDropTable()
	local pName = myData.playerName
	deletePlayerData.deletePlayerDat(pName)
		local goToMenu = function()
		
			--switches into the mainmenu
			storyboard.gotoScene( "selectCategory","flipFadeOutIn", 300 )		
		end

			--time of transition into mainmenu
			myTimer = timer.performWithDelay ( 5000 , goToMenu , 1 )		
end

function scene:exitScene(event)
	myData.playerName = nil
	screenGroup:removeSelf()
	screenGroup=nil
		if myTimer then timer.cancel ( myTimer )
		end --this will cancel the timer function above			
end

function scene:didExitScene(event)
	storyboard.removeScene("resetScreen")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene