print ( "gameProper..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local getQuestions = require ( "getQuestions" )
local getPlayerData = require ( "getPlayerData" )
local updateQuestionsTable = require ( "updateQuestionsTable" )
local updatePlayerData = require ( "updatePlayerData" )
local tapSound = require ( "tapSound" )local dingSound = require ( "dingSound" )
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
local playerTextField = pTextField
local questionImage
local hintDesc
local userInput
local questionAnswer
local totalPlayerCoins
local playerCoins
local alert1,alert2,alert3,alert4
local showHintCost = 2
local answerQuestionHint = 5
local hintButton
local timerEvent
local countTime
local solveButton
local wrongSound = myData.wrongSound
local correctSound = myData.correctSound
local enableSound = myData.enableSound
local clockTick = myData.clockTick
local myTimer
local tapSoundEffect
local questionTimer
local textTime
local timeText
local timeRes
local levelOneTime = 20
local levelTwoTime = 15
local levelThreeTime = 10local timeDingSound

local qID = myData.qID
print ( "question ID: " .. qID )
local selectedCategory
selectedCategory = myData.selectedCategory

--load the selected question
local gameQuestion = {}
gameQuestion = getQuestions.loadSelectedQuestions(qID,selectedCategory)

--load playerDAta
local playerData = {}
playerData = getPlayerData.loadPlayerData()

local playID 
local peopleAns
local placeAns
local foodsAns
local eventsAns
local peopleLevel
local placeLevel
local foodLevel
local eventLevel
local questionLevel
local clockPic

questionLevel = gameQuestion.level

playID = playerData.player_ID
myData.playID = playID

peopleAns = playerData.people_answered
myData.peopleAns = peopleAns

placeAns = playerData.places_answered
myData.placeAns = placeAns

foodsAns = playerData.food_answered
myData.foodsAns = foodsAns

eventAns = playerData.events_answered
myData.eventAns = eventAns

peopleLevel = playerData.people_level
myData.peopleLevel = peopleLevel

placeLevel = playerData.places_level
myData.placeLevel = placeLevel

foodLevel = playerData.food_level
myData.foodLevel = foodLevel

eventLevel = playerData.events_level
myData.eventLevel = eventLevel

print ( peopleAns .. " " .. placeAns .. " " .. foodsAns .. " " .. eventAns)

print ( #gameQuestion )
print ( gameQuestion.img_Path )

questionAnswer = gameQuestion.answer
print ( "question answer: " .. questionAnswer )
	
playerCoins = playerData.coins
print ( "player coins: ".. playerCoins )

local function getQuestionImage()
	local imagePath
	imagePath = gameQuestion.img_Path
	questionImage = display.newImageRect ( imagePath , 150, 150 )
	questionImage.x = _W * 0.5 ; questionImage.y = 143 
	screenGroup:insert(questionImage)
	
end



local function checkIfShowHint()
	local showHint
	local gameStat
	showHint = gameQuestion.hintShow
	gameStat = gameQuestion.status
	
	if (showHint == 0 and gameStat == 1 ) then
		
		hintButton:setEnabled(false)
		
    	local questionHint = gameQuestion.hint
    	local hintText = questionHint
	--creates a text box   
    	hintDesc = native.newTextBox ( 0, 0, _W * .93,  _W*.43 )
		hintDesc.font = native.newFont ( native.systemFont ,20 )
		hintDesc.hasBackground = true
		hintDesc.isEditable = false
		hintDesc.align = "left"
		hintDesc.x = _W * 0.5 ; hintDesc.y = _H * .72
		hintDesc.text = hintText
		
		buttonGroup:insert(hintDesc)
		
	elseif (showHint == 0 or showHint == 1 and gameStat == 0) then
				hintButton:setEnabled(false)
		
    	local questionHint = gameQuestion.trivia
    	local hintText = questionHint
	--creates a text box   
    	hintDesc = native.newTextBox ( 0, 0, _W * .93,  _W*.43 )
		hintDesc.font = native.newFont ( native.systemFont ,20 )
		hintDesc.hasBackground = true
		hintDesc.isEditable = false
		hintDesc.align = "left"
		hintDesc.x = _W * 0.5 ; hintDesc.y = _H * .72
		hintDesc.text = hintText
		
		buttonGroup:insert(hintDesc)
			
	end	
end

local function enoughComplete(event)
	if "clicked" == event.action then
		local i = event.index
			if i == 1 then

				native.cancelAlert ( alert1 )
			end
	elseif "cancelled" == event.action then
			
	end	
end	

local function checkIfEnough()

		 alert1 = native.showAlert ( "Not enough coins", 
			"Cannot use this hint", {"Ok"},
	enoughComplete
		)
end

local function checkIfEnoughSolve()

		 alert1 = native.showAlert ( "Not enough coins", 
			"Cannot show the answer", {"Ok"},
	enoughComplete
		)
end

local function solveHintComplete(event)
	if "clicked" == event.action then
		
		local i = event.index
		
			if i == 1 then
				
				if (tonumber)(playerCoins)>=tonumber(answerQuestionHint) then
					print("solve question")
					
						local selCat = selectedCategory
						local questionID = qID
						
						--local showHint = gameQuestion.showHint
						local status = 0
						local showHint
						showHint = gameQuestion.hintShow

						
						local newCoin = playerCoins - answerQuestionHint
						
						myData.newPlayerCoin = newCoin
			
						totalPlayerCoins.text = newCoin			
			
						updateQuestionsTable.updateQDB(selCat,questionID,showHint,status)
			
						updatePlayerData.updatePlayer(newCoin)
						
						pTextField.text = questionAnswer
						
						myData.ifSolveUsed = true
						
		local gotoHere = function()

			--switches into the mainmenu
			storyboard.gotoScene( "correctAnswer","crossFade", 300 )		
		end		
		
		myTimer = timer.performWithDelay ( 1000, gotoHere ,1 )
					
				else
					print ( "not enough coins" )
				checkIfEnoughSolve()
				end
							
			end
			
	elseif "cancelled" ==event.action then
			print ( "cancelled" )
	end
end

local function showHintComplete(event)
	if "clicked" == event.action then
		
		local i = event.index
		
			if i == 1 then
				
				if (tonumber(playerCoins) >= tonumber(showHintCost)) then
				
					print ( "show the hint" )
			
					local showHint

					showHint = gameQuestion.hintShow
					
	
					if (showHint ~= 0 ) then
						
    					local questionHint = gameQuestion.hint
    					local hintText = questionHint
						--creates a text box   
    					hintDesc = native.newTextBox ( 0, 0, _W * .93,  _W*.43 )
						hintDesc.font = native.newFont ( native.systemFont ,20 )
						hintDesc.hasBackground = true
						hintDesc.isEditable = false
						hintDesc.align = "left"
						hintDesc.x = _W * 0.5 ; hintDesc.y = _H * .72
						hintDesc.text = hintText
			
						local qStatus = gameQuestion.status
						local selCat = selectedCategory
						local questionID = qID
						local showHint = 0
						local status
						
						if (qStatus == 0) then
							status = 0
						elseif (qStatus == 1) then
							status = 1
						end
						local newCoin = playerCoins - showHintCost
						
						myData.newPlayerCoin = newCoin
			
						totalPlayerCoins.text = newCoin			
			
						updateQuestionsTable.updateQDB(selCat,questionID,showHint,status)
			
						updatePlayerData.updatePlayer(newCoin)

		
						buttonGroup:insert(hintDesc)			
							
					end
				
				else
					checkIfEnough()	
				end
					
			elseif "cancelled" == event.action then
				print ( "cancelled" ) 	
			end				
	end
end

--native call alert
local function showHintAlert()

	 alert3 = native.showAlert("Use hint",
		"Show the hint about the image?  (" .. showHintCost .. " coins)",
		{"Yes","No"},
		showHintComplete
	)
end


local function solveHintAlert()
	local qStatus 
	
	qStatus = gameQuestion.status
	
	if (qStatus == 1) then
	 alert4 = native.showAlert("Show answer",
		"Show the answer of the image?  (" .. answerQuestionHint .. " coins)",
		{"Yes","No"},
		solveHintComplete
	)
	end
end	

local function backButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "back button is pressed" )
		tapSoundEffect = tapSound.checkSound()

		myData.qID = nil
		
		storyboard.gotoScene("selectQuestion",{
				effect="slideLeft",
				time = 250,
		})
	end
end

local function displayqTime()
	if (questionLevel == 1) then
		timeText = levelOneTime
		timeRes = timeText
		textTime.text = timeText	
	elseif (questionLevel == 2) then
		timeText = levelTwoTime
		timeRes = timeText
		textTime.text = timeText	
	elseif (questionLevel == 3) then
		timeText = levelThreeTime
		timeRes = timeText
		textTime.text = timeText	
	end		
end

local function wrongAnswer()
		storyboard.gotoScene("tryAgain",{
				effect="slideLeft",
				time = 250,
		})
end	
		

function scene:createScene(event)
	screenGroup = self.view
	
	local topBar

	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	topBar = display.newImageRect ( "images/topBar2.png" , 350, 60 )
	topBar.x = _W*.5 ; topBar.y = 28
	
	coinPic = display.newImageRect ( "images/coin.png" , 20, 20 )
	coinPic.x = 20; coinPic.y = 20
	
	clockPic = display.newImageRect ( "images/time.png"  ,20, 20 )
	clockPic.x = 260; clockPic.y = 20
	
	
	totalPlayerCoins = display.newText( playerCoins ,36, 10, native.systemFont, _W * 0.06 )
	totalPlayerCoins:setReferencePoint ( display.CenterLeftReferencePoint )
	totalPlayerCoins:setTextColor ( 0, 0, 0 )

	textTime = display.newText( "0", 280, 10, native.systemFont, _W * 0.06 )
	textTime:setReferencePoint ( display.CenterLeftReferencePoint )
	textTime:setTextColor ( 0, 0, 0 )
	
	displayqTime()
	
	screenGroup:insert(background)
	screenGroup:insert(topBar)
	screenGroup:insert(coinPic)
	screenGroup:insert(clockPic)
	screenGroup:insert(totalPlayerCoins)
	screenGroup:insert(textTime)	
end

function scene:enterScene(event)
	getQuestionImage()

	
--creates textfield
	pTextField = native.newTextField ( _HW, _HH, _W * 0.9 ,_H * 0.1  )
	pTextField.inputType = "default"
	pTextField.font = native.newFont ( native.systemFont , _H * 0.05 )
	pTextField:setTextColor ( 0, 0, 0)
	pTextField.align = "center"
	pTextField.x = _W * 0.5 ; pTextField.y = 247
	
--backButton
 local backButton = widget.newButton( {
 	id = "backButton",
 	left = 80,
 	top = 430,
 	--label = "Back",
	width = 160,
	height =40,
	font = native.systemFont,
	fontSize = 18,
	labelColor = {
		default = {0,0,0},
		over = {255,255,255}
	},
	--defaultColor = {201,107,61},
	--overColor = {219,146,85},
				defaultFile = "images/back1.png",
		overFile = "images/back2.png",
	onEvent = backButtonEventHandler,
 	} )
 	
--check the textfield contents
function pTextField:userInput(event)
	if (event.phase == "began") then
		pTextField.text=""
		print ("began")
	elseif (event.phase == "editing") then

        
	elseif (event.phase == "ended") then
		print ("ended")
	elseif (event.phase == "submitted") then

			userInput = pTextField.text
			print (userInput)
	print ("submitted")

		if string.lower ( userInput ) == string.lower(questionAnswer) then
		print ( "correct" )
		audio.play(correctSound)
		
		local gotoHere = function()

			--switches into the mainmenu
			storyboard.gotoScene( "correctAnswer","crossFade", 300 )		
		end		
		
		myTimer = timer.performWithDelay ( 1000, gotoHere ,1 )		
			
		else
		audio.play(wrongSound)
		print ( "wrong" )	
		end	
	end	
end

--hintButton
hintButton = widget.newButton
{
		left = 30,
		top = 130,
		width = 35,
		height = 35,
		defaultFile = "images/hint.png",
		overFile = "images/hint.png",
		id = "next_Button",
		onEvent = showHintAlert,	
}

local hintTxt = display.newText(  "Show Hint", 20, 170, native.systemFont, 12 )
hintTxt:setTextColor ( 0, 0, 0 )
local solveTxt = display.newText(  "Show Answer", 240, 170, native.systemFont, 12 )
solveTxt:setTextColor ( 0, 0, 0 )

--solveButton
solveButton = widget.newButton
{
		left = 260,
		top = 130,
		width = 35,
		height = 35,
		defaultFile = "images/answers.png",
		overFile = "images/answers.png",
		id = "next_Button",
		onEvent = solveHintAlert,	
}

--checks if show hint will be shown
	checkIfShowHint()	
 
 local checkQuestionStatus
 checkQuestionStatus = gameQuestion.status
 print ("question is answered: " .. checkQuestionStatus)
 
 if checkQuestionStatus == 1 then
 pTextField:addEventListener ( "userInput", pTextField )
 elseif checkQuestionStatus == 0 then
 pTextField.text = questionAnswer		
 end


 buttonGroup:insert(backButton)
 buttonGroup:insert(pTextField)
 buttonGroup:insert(hintButton)
 buttonGroup:insert(hintTxt)
 buttonGroup:insert(solveButton)
 buttonGroup:insert(solveTxt) 

 
 	 local levelTime = timeRes		

		questionTimer = function(event)
			levelTime = levelTime- 1
			textTime.text = levelTime
				if (levelTime <= 0) then
						print ("time's up!")
						timer.cancel ( timerEvent )
						timeDingSound = dingSound.timeSound()
						wrongAnswer()
				end	
		end 
	 if (checkQuestionStatus == 1) then
		if enableSound == true then
			if myData.clockTickSoundHandler == nil then
				local clockSound
				clockSound = audio.play(clockTick,{loops = -1})
				myData.clockTickSoundHandler = clockSound
			end
		end 
 		timerEvent = timer.performWithDelay ( 1000, questionTimer ,levelTime )
 	elseif (checkQuestionStatus == 0) then
 		textTime.text = " "
 		clockPic.alpha = 0	
	 end	
end

function scene:exitScene(event)
	if myData.clockTickSoundHandler ~= nil then
		local clockSound
		clockSound = myData.clockTickSoundHandler
		audio.stop(clockSound)
		myData.clockTickSoundHandler = nil
		timer.cancel ( timerEvent )
		timerEvent = nil
	end
	
	pTextField:removeEventListener("userInput",pTextField)
	buttonGroup:removeSelf()
	buttonGroup = nil
	screenGroup:removeSelf()
	screenGroup = nil
	if myTimer then timer.cancel ( myTimer )
	end --this will cancel the timer function above		
end

function scene:didExitScene(event)
	storyboard.removeScene("gameProper")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene