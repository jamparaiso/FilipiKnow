print ( "correctAnswer..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local getQuestions = require ( "getQuestions" )
local getPlayerData = require ( "getPlayerData" )
local updateQuestionsTable = require ( "updateQuestionsTable" )
local updatePlayerData = require ( "updatePlayerData" )
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
local questionImage
local hintDesc

local selectedCategory
selectedCategory = myData.selectedCategory

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

local function getQuestionImage()
	local imagePath
	imagePath = gameQuestion.img_Path
	questionImage = display.newImageRect ( imagePath , 150, 150 )
	questionImage.x = _W * 0.5 ; questionImage.y = 143 
	screenGroup:insert(questionImage)
	
end

local function backButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "back button is pressed" )

	
	local checkIfSkip
	local newCoin
	local reward
	checkIfSkip = myData.ifSolveUsed
	
	if (checkIfSkip == true) then
	 reward = 0
	 else
	 reward = 1	
	end	
	
	newCoin = playerData.coins + reward

	print ( "player coins: " .. newCoin )
	
	updatePlayerData.updatePlayer(newCoin)
	
	
	updateQuestionsTable.updateStatus(selectedCategory,qID)

	myData.qID = nil
	myData.ifSolveUsed = nil
	myData.newPlayerCoin = nil
		
		storyboard.gotoScene("selectQuestion",{
				effect="slideLeft",
				time = 250,
		})
	end
end


function scene:createScene(event)
	screenGroup = self.view
	
	local topBar

	
	background = display.newImage("images/bg.png")
	background.x = _W*.5 ; background.y = _H*.5
	
	topBar = display.newImageRect ( "images/topBar2.png" , 350, 60 )
	topBar.x = _W*.5 ; topBar.y = 28

	
	
	screenGroup:insert(background)
	screenGroup:insert(topBar)	
end

function scene:enterScene(event)
	getQuestionImage()
	
	local questionAnswer
	local answerText
	local questionHint = gameQuestion.trivia
    local hintText = questionHint
    
    answerText = gameQuestion.answer
	questionAnswer = display.newText( answerText ,90, 230, native.systemFont, 18 )
	questionAnswer:setReferencePoint ( display.CenterReferencePoint )	questionAnswer.x = 160
	questionAnswer:setTextColor ( 0, 0, 0 )
	
	--creates a text box   
    hintDesc = native.newTextBox ( 0, 0, _W * .93,  _W*.43 )
	hintDesc.font = native.newFont ( native.systemFont ,20 )
	hintDesc.hasBackground = true
	hintDesc.isEditable = false
	hintDesc.align = "left"
	hintDesc.x = _W * 0.5 ; hintDesc.y = _H * .72
	hintDesc.text = hintText
	
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
	
	buttonGroup:insert(questionAnswer)
	buttonGroup:insert(hintDesc)
	buttonGroup:insert(backButton)
end

function scene:exitScene(event)
	buttonGroup:removeSelf()
	buttonGroup = nil
	screenGroup:removeSelf()
	screenGroup = nil
end

function scene:didExitScene(event)
	storyboard.removeScene("correctAnswer")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene