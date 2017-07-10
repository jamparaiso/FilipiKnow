print ( "playerStat..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tapSound = require ("tapSound" )
local backMusic = require ( "backMusic" )
local tableView = require("tableView")
local ui = require("ui")
local getAllPlayer = require ( "getAllPlayer" )
local scene = storyboard.newScene()

--variable declaration
--screen height and width, this was declared in myData.lua
local _H = myData._H
local _W = myData._W
local _HH = myData._HH
local _HW = myData._HW

local screenOffsetW, screenOffsetH = display.contentWidth -  display.viewableContentWidth, display.contentHeight - display.viewableContentHeight
local myList
local tapSoundEffect
local screenGroup
local buttonGroup = display.newGroup ( )
local button = display.newGroup()
local background
local tapSoundEffect
local backMusicEffect
--setup the table
local data = {}  --note: the declaration of this variable was moved up higher to broaden its scope
local g
--position of the slide on the top
local topBoundary = display.screenOriginY + 70
local bottomBoundary = display.screenOriginY + 65

local playerData = {}
playerData = getAllPlayer.getAllPlayerData()

--callback function if the navtop is tapped
local function scrollToTop()
	myList:scrollTo(topBoundary-1)
end

--dynamic list view
--shows all the top 10 player
for i = 1, #playerData do
	data[i] = {}
	data[i].playerName = playerData[i].playerName
	data[i].coins = playerData[i].coins
	data[i].peopleLevel = playerData[i].peopleLevel
	data[i].peopleAns = playerData[i].peopleAns
	data[i].placeLevel = playerData[i].placeLevel
	data[i].placeAns = playerData[i].placeAns
	data[i].foodLevel = playerData[i].foodLevel
	data[i].foodAns = playerData[i].foodAns
	data[i].eventLevel = playerData[i].eventLevel
	data[i].eventAns = playerData[i].eventAns
	data[i].status = playerData[i].status
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

local function listButtonRelease( event )
	self = event.target
	local id = self.id
	print ( id )
end	

function scene:createScene(event)
	screenGroup = self.view

	
	background = display.newImage("images/bg.png")
	background.x = _W*.5 ; background.y = _H*.5

	
	screenGroup:insert(background)	
end

function scene:enterScene(event)
local headImage = "images/head.png"
myList = tableView.newList{
	data=data,
	--default="images/listItemBg.png",
	default="images/listItemBg_whiteb.png",
	over="images/listItemBg_over.png",
	--onRelease = youTappedMe,
	onRelease=listButtonRelease,
	top=topBoundary,
	bottom=bottomBoundary,
    callback = function( row )
                          g = display.newGroup()

                         	
                         	local img = display.newImage(headImage)
                         	g:insert(img)
                         	img.x = math.floor(img.width*0.3 + 6)
                         	img.y = math.floor(img.height*0.2)
						 	img.yScale = .5
						 	img.xScale = .5

                         
						--inserts the title of the img

						 	 
                         	local answer =  display.newText("Player Name: ".. row.playerName, 0, 0, native.systemFont, 12 )
                         	answer:setTextColor(0, 0, 0)
                         	--title:setTextColor(255, 255, 255)
                         	g:insert(answer)                         	answer:setReferencePoint ( display.CenterLeftReferencePoint )
                         	answer.x = answer.width*.1+19
                         	answer.y = 5
                         	
                         	local coin = display.newText( "Coins: " .. row.coins, 0, 0, native.systemFont, 12 )
                         	coin:setTextColor ( 0, 0, 0 )
                         	g:insert(coin)                         	coin:setReferencePoint ( display.CenterLeftReferencePoint )
                         	coin.x = coin.width* .1 + 21
                         	coin.y = 20
                         	
                         	local placeLevel = display.newText(  "People Level: " .. row.peopleLevel .. "     Answered: " ..row.peopleAns, 0, 0, native.systemFont, 12 )
                         	placeLevel:setTextColor ( 0, 0, 0 )
                         	g:insert(placeLevel)                         	placeLevel:setReferencePoint (display.CenterLeftReferencePoint)
                         	placeLevel.x = placeLevel.width * .1 +10
                         	placeLevel.y = 35

						     local peopleLevel = display.newText(  "Place Level: " .. row.placeLevel.. "       Answered: " ..row.placeAns, 0, 0, native.systemFont, 12 )
						     peopleLevel:setTextColor ( 0, 0, 0  )
						     g:insert(peopleLevel)						     peopleLevel:setReferencePoint ( display.CenterLeftReferencePoint )
						     peopleLevel.x = peopleLevel.width * .1 + 10
						     peopleLevel.y = 50
						     
						     local eventLevel = display.newText(  "Event Level: " ..row.eventLevel.. "       Answered: " ..row.eventAns, 0, 0, native.systemFont, 12 )
						     eventLevel:setTextColor ( 0, 0, 0  )
						     g:insert(eventLevel)						     eventLevel:setReferencePoint ( display.CenterLeftReferencePoint )
						     eventLevel.x = eventLevel.width * .1 + 10
						     eventLevel.y = 65
						     
						     local foodLevel = display.newText(  "Food Level: " ..row.foodLevel.. "        Answered: " ..row.foodAns, 0, 0, native.systemFont, 12 )
						     foodLevel:setTextColor ( 0, 0, 0  )
						     g:insert(foodLevel)						     foodLevel:setReferencePoint ( display.CenterLeftReferencePoint )
						     foodLevel.x = foodLevel.width * .1 + 10
						     foodLevel.y = 80						     

                         return g   
                  end 
}


local navBar = ui.newButton{
	default = "images/bg.png",
	onRelease = scrollToTop
}
navBar.x = display.contentWidth*.5
navBar.y = -5
navBar.width = 320
navBar.height = 60

local statBanner = display.newImageRect (  "images/statistics.png" ,280, 90 )
	statBanner.x = 160 ; statBanner.y = 0

local bottomWrap = display.newImageRect ( "images/bg.png",  320, 60 )
	bottomWrap.x = _W /2 ; bottomWrap.y = 483
	
--backButton
 local backButton = widget.newButton( {
 	id = "backButton",
 	left = 80,
 	top = 460,
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

	button:insert(myList)
	button:insert(navBar)
	button:insert(bottomWrap)
	button:insert(backButton)
	button:insert(statBanner)
		
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup = nil
	buttonGroup:removeSelf()
	buttonGroup = nil
	button:removeSelf()
	button = nil
	data = nil
end

function scene:didExitScene(event)
	storyboard.removeScene("playerStat")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene