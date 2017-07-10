print ( "tryAgain..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ("tapSound" )
local backMusic = require ( "backMusic" )
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
local tapSoundEffect
local backMusicEffect

local function tryAgainButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "try again button is pressed" )
		tapSoundEffect = tapSound.checkSound()

		
		storyboard.gotoScene("gameProper",{
				effect="slideLeft",
				time = 250,
		})
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

function scene:createScene(event)
	screenGroup = self.view
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	local timeUpLogo = display.newImageRect (  "images/timesuplogo.png",240 ,280  )
	timeUpLogo.x = 160 ; timeUpLogo.y = 200
	
	screenGroup:insert(background)
	screenGroup:insert(timeUpLogo)	
end

function scene:enterScene(event)
	
local tryAgainButton = widget.newButton( {
	id = "tryAgain_Button",
	left =74,
	top = 370,
	--label = "Try Again",
	width = 186,
	height = 45,
	font = native.systemFont,
	fontSize = 18,
	labelColor = {
		default = {0,0,0},
		over = {255,255,255}
	},
	--defaultColor = {201,107,61},
	--overColor = {219,146,85},
	defaultFile = "images/tryagain.png",
	overFile = "images/tryagain.png",	
	onEvent = tryAgainButtonEventHandler,
	} )
	
local backButton = widget.newButton( {
	id = "back_Button",
	left = 80,
	top = 420,
	--label = "Back",
	width = 160,
	height = 40,
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

	buttonGroup:insert(tryAgainButton)
	buttonGroup:insert(backButton)	
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup = nil
	buttonGroup:removeSelf()
	buttonGroup = nil
end

function scene:didExitScene(event)
	storyboard.removeScene("tryAgain")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene