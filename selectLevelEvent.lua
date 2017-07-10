print ( "selectLevelEvent..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
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

--button events
local function levelOneButtonEventHandler(event)
	local phase = event.phase
	
		if  "ended" == phase then
			print ( "levelOne button is pressed" )
		--[[storyboard.gotoScene("selectCategory",{
				effect="flipFadeOutIn",
				time = 250,
		})]]--
		end	
end

local function levelTwoButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "levelTwo button is pressed" )
	end
end

local function levelThreeButtonEventHandler(event)
	local phase =event.phase
	
	if "ended" == phase then
		print ( "levelThree button is pressed" )
	end
end

local function backButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "back button is pressed" )
		storyboard.gotoScene("selectCategory",{
				effect="slideLeft",
				time = 250,
		})
	end
end


function scene:createScene(event)
	screenGroup = self.view
	
	local txtLevel
	local txtCategory
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	txtLevel = display.newText(  "Select Level", 80, 30, native.systemFont, 30 )
	txtLevel:setTextColor ( 0, 0, 0 )
	
	txtCategory = display.newText(  "Event", 110, 80, native.systemFont, 30 )
	txtCategory:setTextColor ( 0, 0, 0 )	
	
	screenGroup:insert(background)
	screenGroup:insert(txtLevel)
	screenGroup:insert(txtCategory)	
end

function scene:enterScene(event)

--peoplebutton	
	local levelOneButton = widget.newButton( {
		id = "levelOne_Button",
		left = 80,
		top = 150,
		label = "Level 1",
		width = 160,
		height = 18,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		defaultColor = {201,107,61},
		overColor = {219,146,85},
		onEvent = levelOneButtonEventHandler,
		} )
		
--placebutton	
	local levelTwoButton = widget.newButton( {
		id = "levelTwo_Button",
		left = 80,
		top = 190,
		label = "Level 2",
		width = 160,
		height = 18,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		defaultColor = {201,107,61},
		overColor = {219,146,85},
		onEvent = levelTwoButtonEventHandler,
		} )
		
--foodbutton	
	local levelThreeButton = widget.newButton( {
		id = "levelThree_Button",
		left = 80,
		top = 230,
		label = "Level 3",
		width = 160,
		height = 18,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		defaultColor = {201,107,61},
		overColor = {219,146,85},
		onEvent = levelThreeButtonEventHandler,
		})
		
--backButton
 local backButton = widget.newButton( {
 	id = "backButton",
 	left = 80,
 	top = 340,
 	label = "Back",
	width = 160,
	height = 18,
	font = native.systemFont,
	fontSize = 18,
	labelColor = {
		default = {0,0,0},
		over = {255,255,255}
	},
	defaultColor = {201,107,61},
	overColor = {219,146,85},
	onEvent = backButtonEventHandler,
 	} )		

		
buttonGroup:insert(levelOneButton)
buttonGroup:insert(levelTwoButton)
buttonGroup:insert(levelThreeButton)
buttonGroup:insert(backButton)		
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup=nil
	buttonGroup:removeSelf()
	buttonGroup=nil
end

function scene:didExitScene(event)
	storyboard.removeScene("selectLevelEvent")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene