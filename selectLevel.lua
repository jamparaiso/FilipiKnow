print ( "selectLevel..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ( "tapSound" )
local getPlayerData = require ( "getPlayerData" )
local getLevelOneAns = require ( "getLevelOneAns" )
local getLevelTwoAns = require ( "getLevelTwoAns" )
local getLevelThreeAns = require ( "getLevelThreeAns" )
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
local categoryID = myData.selectedCategory
local selectedLevel = myData.selectedLevel
local txtWhatCategory
local tapSoundEffectlocal lvlTwoLocklocal lvlThreeLock

--load playerDAta
local playerData = {}
playerData = getPlayerData.loadPlayerData()

local selCat
selCat = myData.selectedCategory

local levelOneAns = {}
levelOneAns = getLevelOneAns.levelOneAns()

local levelTwoAns = {}
levelTwoAns = getLevelTwoAns.levelTwoAns()

local levelThreeAns = {}
levelThreeAns = getLevelThreeAns.levelThreeAns()

print (#levelOneAns)
print ( #levelTwoAns )
print (#levelThreeAns)

local oneAns = #levelOneAns
local twoAns = #levelTwoAns
local threeAns = #levelThreeAns

local playID 
local peopleAns
local placeAns
local foodsAns
local eventsAns

playID = playerData.player_ID

peopleAns = playerData.people_answered

placeAns = playerData.places_answered

foodsAns = playerData.food_answered

eventAns = playerData.events_answered

--button events
local function levelOneButtonEventHandler(event)
	local phase = event.phase
	
		if  "ended" == phase then
			print ( "levelOne button is pressed" )
			tapSoundEffect = tapSound.checkSound()
			myData.selectedLevel = 1
			
		storyboard.gotoScene("selectQuestion",{
				effect="flipFadeOutIn",
				time = 250,
		})
		end
end

local function levelTwoButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "levelTwo button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedLevel = 2

		storyboard.gotoScene("selectQuestion",{
				effect="flipFadeOutIn",
				time = 250,
		})
		
	end
end

local function levelThreeButtonEventHandler(event)
	local phase =event.phase
	
	if "ended" == phase then
		print ( "levelThree button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedLevel = 3
		
		storyboard.gotoScene("selectQuestion",{
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
		
		storyboard.gotoScene("selectCategory",{
				effect="slideLeft",
				time = 250,
		})
	end
end

local t1
local t2
local t3
local whatImage

local function whatCategory()
	if categoryID == 1 then -- people
		txtWhatCategory = "People"
		whatImage = "images/peoplecategory.png"
		t1 = "Athletes"
		t2 = "Presidents"
		t3 = "Hero"
	elseif categoryID == 2 then -- place
		txtWhatCategory = "Place"
		whatImage = "images/placescategory.png"
		t1= "Famous Place"
		t2 = "Churches"
		t3 = "Tourist Spot"
	elseif categoryID == 3 then -- food
		txtWhatCategory = "Food"
		whatImage = "images/foodcategory.png"
		t1 = "Soups"
		t2 = "Exotic Food"
		t3 = "Delicacies"
	elseif categoryID == 4 then -- event
		txtWhatCategory = "Event"
		whatImage = "images/eventcategory.png"
		t1 = "Cultural"
		t2 = "Non Religious"
		t3 = "Religious"
	end
end	


function scene:createScene(event)
	screenGroup = self.view
	
	local txtLevel
	local txtCategory
	local tt1
	local tt2
	local tt3
	
	local a1
	local a2
	local a3
	
	whatCategory()
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	--txtLevel = display.newText(  "Select Level", 55, 30, native.systemFont, 30 )
	--txtLevel:setTextColor ( 0, 0, 0 )
	
	--txtCategory = display.newText( txtWhatCategory , 120, 70, native.systemFont, 30 )
	--txtCategory:setTextColor ( 0, 0, 0 )
	
	local levelLogo = display.newImageRect ( whatImage , 330, 110 )
	levelLogo.x = 160 ; levelLogo.y = 60
	
	tt1 = display.newText( t1, 90, 145, native.systemFont, 15 )
	tt1:setTextColor ( 0, 0, 0  )
	tt2 = display.newText( t2 , 90, 215, native.systemFont, 15 )
	tt2:setTextColor ( 0, 0, 0  )
	tt3 = display.newText( t3 , 90, 285, native.systemFont, 15 )
	tt3:setTextColor ( 0, 0, 0  )
	
	a1 = display.newText( oneAns .. "/10", 200, 145, native.systemFont, 15 )
	a1:setTextColor ( 0, 0, 0  )
	a2 = display.newText( twoAns .. "/15" , 200, 215, native.systemFont, 15 )
	a2:setTextColor ( 0, 0, 0  )
	a3 = display.newText( threeAns .. "/20" , 200, 285, native.systemFont, 15 )
	a3:setTextColor ( 0, 0, 0  )
	
	
	screenGroup:insert(background)
	--screenGroup:insert(txtLevel)
	--screenGroup:insert(txtCategory)
	screenGroup:insert(tt1)
	screenGroup:insert(tt2)
	screenGroup:insert(tt3)
	screenGroup:insert(a1)
	screenGroup:insert(a2)
	screenGroup:insert(a3)
	screenGroup:insert(levelLogo)	
end

function scene:enterScene(event)

--peoplebutton	
	local levelOneButton = widget.newButton( {
		id = "levelOne_Button",
		left = 80,
		top = 160,
		--label = "Level 1",
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
		defaultFile = "images/level1.png",
		overFile = "images/level11.png",		
		onEvent = levelOneButtonEventHandler,
		} )
		
--placebutton	
	local levelTwoButton = widget.newButton( {
		id = "levelTwo_Button",
		left = 80,
		top = 230,
		--label = "Level 2",
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
		defaultFile = "images/level2.png",
		overFile = "images/level22.png",
		onEvent = levelTwoButtonEventHandler,
		} )
		
--foodbutton	
	local levelThreeButton = widget.newButton( {
		id = "levelThree_Button",
		left = 80,
		top = 300,
		--label = "Level 3",
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
		defaultFile = "images/level3.png",
		overFile = "images/level33.png",
		onEvent = levelThreeButtonEventHandler,
		} )
		
--backButton
 local backButton = widget.newButton( {
 	id = "backButton",
 	left = 80,
 	top = 390,
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
 	
local function buttonInit()
--defaultlvlTwoLock = display.newImageRect (  "images/lockLevel.png" , 160, 40 )lvlTwoLock.x= 160 ; lvlTwoLock.y = 250lvlTwoLock.alpha = 1lvlThreeLock = display.newImageRect ( "images/lockLevel.png"  , 160, 40 )lvlThreeLock.x = 160; lvlThreeLock.y =320lvlThreeLock.alpha = 1
levelOneButton:setEnabled(true)
levelTwoButton:setEnabled(false)levelTwoButton.alpha = 0
levelThreeButton:setEnabled(false)levelThreeButton.alpha = 0
 if (categoryID == 1) then
 	print("people catergory")
print("total people answered:" .. peopleAns)
 	if tonumber(peopleAns) >= 10 and tonumber (  peopleAns ) <= 24 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(false)
 	elseif tonumber(peopleAns) >= 25 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(true) 		lvlThreeLock.alpha = 0 		levelThreeButton.alpha = 1
 	--elseif tonumber(peopleAns) <= 20 then
 		--levelOneButton:setEnabled(true)
 		--levelTwoButton:setEnabled(true)
 		--levelThreeButton:setEnabled(true) 		 		 			
 	end
 	
  elseif (categoryID == 2) then
  print ( "place catergory" )
 print ( "total place answered: " ..placeAns ) 
 	if tonumber(placeAns) >= 10  and tonumber ( placeAns ) <= 24 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(false)
 	elseif tonumber(placeAns) >= 25 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(true) 		lvlThreeLock.alpha = 0 		levelThreeButton.alpha = 1
 	--elseif tonumber(placeAns) <= 20 then
 		--levelOneButton:setEnabled(true)
 		--levelTwoButton:setEnabled(true)
 		--levelThreeButton:setEnabled(true) 		 		 			
 	end
 	
 	
  elseif (categoryID == 3) then
 	if tonumber(foodsAns) >= 10 and tonumber (  foodAns ) <= 24 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(false)
 	elseif tonumber(foodsAns) >= 25 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(true) 		lvlThreeLock.alpha = 0 		levelThreeButton.alpha = 1
 	--elseif tonumber(foodsAns) <= 20 then
 		--levelOneButton:setEnabled(true)
 		--levelTwoButton:setEnabled(true)
 		--levelThreeButton:setEnabled(true) 		 		 			
 	end
 	
  elseif (categoryID == 4) then
 	if tonumber(eventAns) >= 10 and tonumber (  eventAns )<= 24 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(false)
 	elseif tonumber(eventAns) >= 25 then
 		levelOneButton:setEnabled(true)
 		levelTwoButton:setEnabled(true) 		lvlTwoLock.alpha = 0 		levelTwoButton.alpha = 1
 		levelThreeButton:setEnabled(true) 		lvlThreeLock.alpha = 0 		levelThreeButton.alpha = 1
 	--elseif tonumber(eventAns) <= 20 then
 		--levelOneButton:setEnabled(true)
 		--levelTwoButton:setEnabled(true)
 		--levelThreeButton:setEnabled(true) 		 		 			
 	end  	 	 			
 end
 	
end	 			

buttonInit()
buttonGroup:insert(lvlTwoLock)buttonGroup:insert(lvlThreeLock)		
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
	storyboard.removeScene("selectLevel")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene