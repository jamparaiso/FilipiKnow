print ( "newGame..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ("tapSound" )
local backMusic = require ( "backMusic" )
local createPlayerProfile = require ( "createPlayerProfile" )
local deletePlayerData = require ( "deletePlayerData" )
local scene = storyboard.newScene()

--variable declaration
--screen height and width, this was declared in myData.lua
local _H = myData._H
local _W = myData._W
local _HH = myData._HH
local _HW = myData._HW

local playerTextField = pTextField
local screenGroup
local buttonGroup = display.newGroup ( )
local background
local tapSoundEffect
local backMusicEffect
local checkForSaveSlot
local pName
local alertDisplay
local submitButtonEventHandler
local checkIfBlank
local onAlertCreatePlayer
local createAlert
local focusTextField
local backButtonEventHandler

function scene:createScene(event)
	screenGroup = self.view
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	--local newGameText = display.newText(  "New Game", 95, 30, native.systemFont, 25 )
	--newGameText:setTextColor ( 0, 0, 0 )
	local catLogo = display.newImageRect (  "images/newgamebanner.png" , 280, 90 )
	catLogo.x = 160 ; catLogo.y = 60
	local profileText = display.newText(  "Player Name",100, 100, native.systemFont, 20 )
	profileText:setTextColor ( 0, 0, 0 )
	
	local nameLimitText = display.newText(  "*max 8 characters", 105, 180, fontStyle, 15 )	
	nameLimitText:setTextColor ( 199, 25, 0 )
	nameLimitText:setReferencePoint(display.CenterReferencePoint)
	
	screenGroup:insert(background)
	--screenGroup:insert(newGameText)
	screenGroup:insert(catLogo)
	screenGroup:insert(profileText)
	screenGroup:insert(nameLimitText)
	
--hides the keyboard when the background is tapped
function background:tap (event)
	native.setKeyboardFocus ( nil ) --dismissess the keyboard
	print ("background has been tapped")
end

--native alert
function checkIfBlank()
		print ("emptyField")
		local alert = native.showAlert ( "Invalid Input", 
			"Please type your name", {"Ok"},
			focusTextField
		)
end

--native alert callback function
function onAlertCreatePlayer(event)
	if (event.action == "clicked") then
		if (event.index == 1 ) then
			print ("create player profile")
			
			--createPlayerProfile.createPlayerProfile(pName)
			--deletePlayerData.deletePlayerDat(pName)
			myData.playerName = pName

			storyboard.gotoScene("resetScreen",{
			effect = "flipFadeOutIn",
			time = 250,
			})
		elseif (event.index == 2 ) then
			print ("cancel delete profile")	
		end
	elseif (event.action =="cancelled") then
		print ("alert cancelled")	
	end
end

function createAlert()
	local createPlayerAlert = native.showAlert ( 
		"Create new player profile", 
		"Are you sure that you want to create a new player profile? Previous saved will be deleted.",
			{"Yes","No"},
			onAlertCreatePlayer
			)	
end


function alertDisplay()
	local invalidNameAlert = native.showAlert ( 
		"Invalid name", 
		"This name contains special character or numbers",
			{"Ok"},
			onAlertInvalidName
			)
end

--checks and set the focus on the text field when the text field is blank
function focusTextField(event)
		if(event.action == "clicked") then

			if (event.index == 1 ) then  --choose ok
				native.setKeyboardFocus (pTextField)
				print ("ok has been tapped")
			end
	
		elseif (event.action == "cancelled") then
			print ("cancel has been tapped")

		end
					
end



function backButtonEventHandler(event)
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

function submitButtonEventHandler(event)
	local phase = event.phase
		if "ended" == phase then
			print ("next press and released")
				tapSoundEffect = tapSound.checkSound()
				
						if pTextField.text == "" or pTextField.text == "Enter your name" then
								--remove the comments when testing on device---------------------
								checkIfBlank() -- uncomment this when building on device
							else --there is text on the textfield / uncomment this when building on device
								pName = pTextField.text --uncomment this when building on device
								--pName = "newPlayer" --comment this when testing on device	
									if (pName:match('%"')) then
										print ("Invalid")
										alertDisplay()
									elseif (pName:match('%+')) then
										print ("Invalid")
										alertDisplay()
									elseif (pName:match('%-')) then
										print ("Invalid")
										alertDisplay()
									elseif (pName:match('%/')) then
										print ("Invalid")
										alertDisplay()
									elseif (pName:match('%*')) then
										print ("Invalid")
										alertDisplay()																
									elseif (pName:match("%A+%A")) then --checks if there are special characters and numbers
										print ("Invalid player name")
										alertDisplay()
									else --valid  name		
									print ( "valid name" )

										print ("player name: " .. pName)
										
										createAlert()

									end				
						end	
				native.setKeyboardFocus ( nil ) --dismissess the keyboard	
		end	
end

background:addEventListener ( "tap", backgroundEvent ) --every time the backround is tapped the keyboard will dismiss
		
end

function scene:enterScene(event)
	
--creates textfield
pTextField = native.newTextField ( _HW, _HH, _W * 0.8 ,_H * 0.1  )
pTextField.inputType = "default"
pTextField.font = native.newFont ( fontStyle , _H * 0.05 )
pTextField:setTextColor ( 0, 0, 0)
pTextField.align = "center"
pTextField.x = _W * 0.5 ; pTextField.y = 150
local fieldText = "Enter your name"
pTextField.text = fieldText

--check the textfield contents
function pTextField:userInput(event)
	if (event.phase == "began") then
		pTextField.text=""
		print ("began")
	elseif (event.phase == "editing") then

	        -- This section happens when the user types
        	-- Lets set up a max length, compare it and if too long, replace it
        	local myNum = 8 -- max characters 	
        	if string.len(event.text) > myNum then
               	-- Text too long, replace textField text with old text
               	pTextField.text = event.oldText
               	print ("max length reached")
        	end
        
	elseif (event.phase == "ended") then
		print ("ended")
	elseif (event.phase == "submitted") then
		if pTextField.text == "" then
		checkIfBlank()
		else
			pName = pTextField.text
			print (pName)
		end
	print ("submitted")
	end	
end

--instructions button		
local submitButton = widget.newButton( {
	id = "submit_Button",
	left = 74,
	top = 200,
	--label = "Submit",
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
	defaultFile = "images/create.png",
	overFile = "images/create2.png",	
	onEvent = submitButtonEventHandler,
	} )

local backButton = widget.newButton( {
	id = "back_Button",
	left = 80,
	top = 240,
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


	
pTextField:addEventListener ( "userInput", pTextField )

buttonGroup:insert(pTextField)

buttonGroup:insert(submitButton)
buttonGroup:insert(backButton)	
end

function scene:exitScene(event)
	pTextField:removeEventListener("userInput",pTextField)
	background:removeEventListener("tap",backgroundEvent)
	screenGroup:removeSelf()
	screenGroup = nil
	buttonGroup:removeSelf()
	buttonGroup = nil
end

function scene:didExitScene(event)
	storyboard.removeScene("newGame")	
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene