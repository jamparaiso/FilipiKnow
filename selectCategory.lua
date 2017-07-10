print ( "selectCategory..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ("tapSound" )
local scene = storyboard.newScene()

--variable declaration
--screen height and width, this was declared in myData.lua
local _H = myData._H
local _W = myData._W
local _HH = myData._HH
local _HW = myData._HW

local screenGroup
local buttonGroup = display.newGroup ()
local background
local tapSoundEffect


--button events
local function peopleButtonEventHandler(event)
	local phase = event.phase
	
		if  "ended" == phase then
			print ( "people button is pressed" )
			tapSoundEffect = tapSound.checkSound()
			myData.selectedCategory = 1 --people category
			
		storyboard.gotoScene("selectLevel",{
				effect="flipFadeOutIn",
				time = 250,
		})
		end	
end

local function placeButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "place button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedCategory = 2 --place category
		
		storyboard.gotoScene("selectLevel",{
				effect="flipFadeOutIn",
				time = 250,
		})		
	end
end

local function foodButtonEventHandler(event)
	local phase =event.phase
	
	if "ended" == phase then
		print ( "food button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedCategory = 3 --foods category
		
		storyboard.gotoScene("selectLevel",{
				effect="flipFadeOutIn",
				time = 250,
		})
	end
end

local function eventButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "event button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedCategory = 4 --events category
		
		storyboard.gotoScene("selectLevel",{
				effect="flipFadeOutIn",
				time = 250,
		})
	end
end


local function backButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "back button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedCategory = nil --clear
		
		storyboard.gotoScene("mainMenu",{
				effect="slideLeft",
				time = 250,
		})
	end
end


function scene:createScene(event)
	screenGroup = self.view
	
	local txtCategory
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	--txtCategory = display.newText(  "Select Category", 55, 30, native.systemFont, 30 )
	--txtCategory:setTextColor ( 0, 0, 0 )		local catLogo = display.newImageRect (  "images/selectcategory.png" , 280, 90 )	catLogo.x = 160 ; catLogo.y = 60
	
	screenGroup:insert(background)	screenGroup:insert(catLogo)
	--screenGroup:insert(txtCategory)	
end

function scene:enterScene(event)

--peoplebutton	
	local peopleButton = widget.newButton( {
		id = "people_Button",
		left = 80,
		top = 150,
		--label = "People",
		width = 160,
		height =35,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		--defaultColor = {201,107,61},
		--overColor = {219,146,85},
		defaultFile = "images/people1.png",
		overFile = "images/people2.png",		
		onEvent = peopleButtonEventHandler,
		} )
		
--placebutton	
	local placeButton = widget.newButton( {
		id = "place_Button",
		left = 80,
		top = 190,
		--label = "Place",
		width = 160,
		height = 35,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		--defaultColor = {201,107,61},
		--overColor = {219,146,85},
		defaultFile = "images/places1.png",
		overFile = "images/places2.png",		
		onEvent = placeButtonEventHandler,
		} )
		
--foodbutton	
	local foodButton = widget.newButton( {
		id = "food_Button",
		left = 80,
		top = 230,
		--label = "Food",
		width = 160,
		height = 35,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		--defaultColor = {201,107,61},
		--overColor = {219,146,85},
				defaultFile = "images/food1.png",
		overFile = "images/food2.png",
		onEvent = foodButtonEventHandler,
		} )
								
--eventbutton	
	local eventButton = widget.newButton( {
		id = "event_Button",
		left = 80,
		top = 270,
		--label = "Event",
		width = 160,
		height = 35,
		font = native.systemFont,
		fontSize = 18,
		labelColor = {
			default = {0,0,0},
			over = {255,255,255}
		},
		--defaultColor = {201,107,61},
		--overColor = {219,146,85},
		defaultFile = "images/events1.png",
		overFile = "images/events2.png",		
		onEvent = eventButtonEventHandler,
		} )

		
--backButton
 local backButton = widget.newButton( {
 	id = "backButton",
 	left = 80,
 	top = 340,
 	--label = "Back",
	width = 160,
	height = 35,
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
		
buttonGroup:insert(peopleButton)
buttonGroup:insert(placeButton)
buttonGroup:insert(foodButton)
buttonGroup:insert(eventButton)
buttonGroup:insert(backButton)			
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup=nil
	buttonGroup:removeSelf()
	buttonGroup=nil
end

function scene:didExitScene(event)
	storyboard.removeScene("selectCategory")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene