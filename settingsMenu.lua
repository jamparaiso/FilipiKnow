print ( "settingsMenu..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ( "tapSound" )
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
local soundButtonOn
local soundButtonOff
local musicButtonOn
local musicButtonOff
local backMusic = myData.backMusic
local enableSound = myData.enableSound
local enableMusic = myData.enableMusic
local tapSoundEffect

--button events--------------------------------------------------------------
local function soundOnEvent ( event )
		local phase = event.phase
		if "ended" == phase then	

		tapSoundEffect = tapSound.checkSound() -- tap sound
		
					enableSound = true
					myData.enableSound = true
					soundButtonOn.alpha = 0
					soundButtonOff.alpha =1

		end			
	end
	
local function soundOffEvent (event)
		local phase = event.phase
			if "ended" == phase then
				
			tapSoundEffect = tapSound.checkSound()
			
					enableSound = false
					myData.enableSound = false
					soundButtonOff.alpha = 0
					soundButtonOn.alpha =1

			end
	end
	
local function musicOnEvent (event)
		local phase = event.phase
			if "ended" == phase then
				
			tapSoundEffect = tapSound.checkSound()	

					enableMusic = true
					myData.enableMusic = true
					musicButtonOn.alpha = 0
					musicButtonOff.alpha = 1
					
					if enableMusic == true then
						if myData.backMusicHandler == nil then
		 				local backMusicHandler
		 				print ("---------------PLAY BACKGROUND MUSIC")
	 					backMusicHandler = audio.play(backMusic, {loops=-1} )
	 					myData.backMusicHandler = backMusicHandler
	 					print ("---------------BACKGROUND MUSIC CHANNEL: " .. backMusicHandler)
						end
					end	  

			end	
	end
	
local function musicOffEvent (event)
		local phase = event.phase
			if "ended" == phase then
				
			tapSoundEffect = tapSound.checkSound()
				
					enableMusic = false
					myData.enableMusic = false
					musicButtonOff.alpha = 0
					musicButtonOn.alpha = 1

					if enableMusic == false then

		 				local backMusicHandler
		 				print ("---------------STOP BACKGROUND MUSIC")
	 					backMusicHandler = myData.backMusicHandler
	 					audio.stop(backMusicHandler)
	 					myData.backMusicHandler = nil
	 					print ("---------------BACKGROUND MUSIC CHANNEL: " .. backMusicHandler)
					end
			end	
end


	
local function backButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "back button is pressed" )

		
		tapSoundEffect = tapSound.checkSound()
		
		storyboard.gotoScene("mainMenu",{
				effect="slideLeft",
				time = 250,
		})
	end
end


function scene:createScene(event)
	screenGroup = self.view
	
	local musicTxt
	local soundTxt
	local settingsTxt
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	settingsTxt= display.newText(  "Settings", 110, 30, native.systemFont, 25 )
	settingsTxt:setTextColor ( 0, 0, 0 )
	
	musicTxt= display.newText(  "Sound", 70, 170, native.systemFont, 20 )
	musicTxt:setTextColor ( 0, 0, 0 )
	
	soundTxt = display.newText(  "Music", 200, 170, native.systemFont,20 )
	soundTxt:setTextColor ( 0, 0, 0 )
	
	screenGroup:insert(background)
	screenGroup:insert(settingsTxt)
	screenGroup:insert(musicTxt)
	screenGroup:insert(soundTxt)	
end

function scene:enterScene(event)
--buttons initialization------------------------------------------------------------------




		soundButtonOn = widget.newButton 
		{
			left = 75,
			top = 195,
			width =50,
			height = 50,
			defaultFile = "images/musicOff.png",
			overFile = "images/musicOffPress.png",
			id = "Sound_On",
			onEvent = soundOnEvent,	
		} 
		soundButtonOn.alpha=1


		soundButtonOff = widget.newButton 
		{
			left = 75,
			top = 195,
			width =50,
			height =50,
			defaultFile = "images/musicOn.png",
			overFile = "images/musicOnPress.png",
			id = "Sound_Off",
			onEvent = soundOffEvent,		
		}
		soundButtonOff.alpha=1

		musicButtonOn = widget.newButton
		{
			left = 200,
			top = 195,
			width = 50,
			height = 50,
			defaultFile = "images/soundOff.png",
			overFile ="images/soundOffPress.png",
			id = "Music_On",
			onEvent = musicOnEvent,
		}
		musicButtonOn.alpha=1


		musicButtonOff = widget.newButton
		{
			left = 200,
			top = 195,
			width = 50,
			height = 50,
			defaultFile = "images/soundOn.png",
			overFile = "images/soundOnPress.png",
			id = "Music_Off",
			onEvent = musicOffEvent,
		}
		musicButtonOff.alpha=1

		
	local backButton = widget.newButton( {
		id = "back_Button",
		left = 80,
		top = 360,
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
		
--checks if what button will be shown-----------------------------------
local function initializeButton()
	if enableSound == true then

		soundButtonOn.alpha = 0
		soundButtonOff.alpha = 1

	elseif enableSound == false then

		soundButtonOn.alpha = 1
		soundButtonOff.alpha = 0

	end

	if enableMusic == true then

		musicButtonOn.alpha = 0
		musicButtonOff.alpha =1

	elseif enableMusic == false then

		musicButtonOn.alpha = 1
		musicButtonOff.alpha =0

	end
			print ("button initialization complete")
end
		
initializeButton()		


buttonGroup:insert(soundButtonOn)
buttonGroup:insert(soundButtonOff)
buttonGroup:insert(musicButtonOn)
buttonGroup:insert(musicButtonOff)
buttonGroup:insert(backButton)		
			
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup = nil
	buttonGroup:removeSelf()
	buttonGroup = nil
end

function scene:didExitScene(event)
	storyboard.removeScene("settingsMenu")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene