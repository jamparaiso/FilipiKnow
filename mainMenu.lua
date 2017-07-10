print ( "mainMenu..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ("tapSound" )
local backMusic = require ( "backMusic" )
local checkIfPlayerExist = require ( "checkIfPlayerExist" )
local getPlayerName = require ( "getPlayerName" )
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
local tapSoundEffect
local backMusicEffect

print ("screenHeight: " .. _H)
print ("screenWidth: " .._W)

local function noPlayerEvent(event)
	if "clicked" == event.action then
		local i = event.index
		if i == 1 then
			print ( "no player data" )
		end
	end
end	

local function noPlayerAlert()
	local alert
	
		alert = native.showAlert("Error loading data",
		"No player profile found.",
		{"Ok"},
		noPlayerEvent
		)
end

local function insButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		tapSoundEffect = tapSound.checkSound()
		print ( "instructions button is pressed" )
		
		storyboard.gotoScene("gameInstructions", {
			effect = "flipFadeOutIn",
			time = 250,
			})
	end
end	

--buttonEvents
local function conButtonEventHandler(event)
	local phase = event.phase
	
		if  "ended" == phase then
			print ( "play button is pressed" )
			tapSoundEffect = tapSound.checkSound()
			
			local checkPlayer
			checkPlayer = checkIfPlayerExist.checkPlayerExist()
			
			print ( checkPlayer )
			
			if (checkPlayer == false) then
				noPlayerAlert()
			elseif (checkPlayer == true) then
				print ( "player found" )
				storyboard.gotoScene("selectCategory",{
				effect="flipFadeOutIn",
				time = 250,
				})	
			end	

		end	
end

local function statButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		tapSoundEffect = tapSound.checkSound()
						storyboard.gotoScene("playerStat",{
				effect="flipFadeOutIn",
				time = 250,
				})
		print ( "statics button is pressed" )
	end
end

local function settingsButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		tapSoundEffect = tapSound.checkSound()
		print ( "settings button is pressed" )
			storyboard.gotoScene("settingsMenu",{
				effect="flipFadeOutIn",
				time = 250,
				})		
	end
end

local function newGameButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		tapSoundEffect = tapSound.checkSound()
		print ( "newgame buttton is pressed" )
		storyboard.gotoScene("newGame",{
			effect ="flipFadeOutIn",
			time = 250,
			})
	end	
end

function scene:createScene(event)
	screenGroup = self.view
	
	local pName
	pName = getPlayerName.getPName()
	
	local checkPlayer
	checkPlayer = checkIfPlayerExist.checkPlayerExist()
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	logo = display.newImageRect ( "images/filipiKnowLogo.png"  , 260, 126 )
	logo.x = 160 ; logo.y = 135
	

	
	screenGroup:insert(background)
	screenGroup:insert(logo)
	
			if (checkPlayer == true) then
		
			local pNameText = display.newText( "Kumusta " , 110, 215, native.systemFont, 15 )
			pNameText:setTextColor ( 0, 0, 0 )			pNameText:setReferencePoint ( display.CenterLeftReferencePoint )			pNameText.x = 110
			
			local nameText = display.newText( pName .."?", 180, 215, native.systemFont, 15 )
			nameText:setTextColor ( 12, 0, 202 )			nameText:setReferencePoint ( display.CenterLeftReferencePoint )			nameText.x = 180			
			
			screenGroup:insert(pNameText)
			screenGroup:insert(nameText)
		end
	
end

function scene:enterScene(event)
	
 backMusicEffect = backMusic.checkBackMusic() -- play the background music

 	local newGameButton = widget.newButton( {
		id = "newGame_Button",
		left = 80,
		top = 250,
		--label = "New Game",
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
		defaultFile = "images/newgame1.png",
		overFile = "images/newgame2.png",	
		onEvent = newGameButtonEventHandler,
		} )
 
--playbutton	
	local conButton = widget.newButton( {
		id = "continue_Button",
		left = 80,
		top = 290,
		--label = "Continue",
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
		defaultFile = "images/continue1.png",
		overFile = "images/continue2.png",	
		onEvent = conButtonEventHandler,
		} )

--instructions button		
	local statButton = widget.newButton( {
		id = "stat_Button",
		left = 80,
		top = 330,
		--label = "Statistics",
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
		defaultFile = "images/statistic1.png",		overFile = "images/statistic2.png",		onEvent = statButtonEventHandler,
		} )
		
--settings button
	local settingsButton = widget.newButton( {
		id = "settings_Button",
		left = 80,
		top = 370,
		--label = "Settings",
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
		defaultFile = "images/settings1.png",
		overFile = "images/setting2.png",		
		onEvent = settingsButtonEventHandler,
		} )
		
--instructions button		
	local insButton = widget.newButton( {
		id = "instructions_Button",
		left = 80,
		top = 410,
		--label = "Instructions",
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
		defaultFile = "images/instruction1.png",
		overFile = "images/instruction2.png",	
		onEvent = insButtonEventHandler,
		} )				
	
	buttonGroup:insert(newGameButton)	
	buttonGroup:insert(conButton)
	buttonGroup:insert(statButton)
	buttonGroup:insert(settingsButton)
	buttonGroup:insert(insButton)
end

function scene:exitScene(event)
	buttonGroup:removeSelf()
	buttonGroup = nil
	screenGroup:removeSelf()
	screenGroup = nil	
end

function scene:didExitScene(event)
 storyboard.removeScene("mainMenu")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene	