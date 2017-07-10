print ( "splashScreen..." )

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
local logo
local loadingTxt
local myTimer

function scene:createScene(event)
	screenGroup = self.view
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	logo = display.newImageRect ( "images/filipiKnowLogo.png"  , 260, 126 )
	logo.x = 160 ; logo.y = 220
	
	loadingTxt  = display.newText(  "Loading...", 115, 310, native.systemFont, 25 )
	loadingTxt:setTextColor ( 0, 0, 0 )
	
	screenGroup:insert(background)
	screenGroup:insert(logo)
	screenGroup:insert(loadingTxt)	
end

function scene:enterScene(event)
		local goToMenu = function()

			--switches into the mainmenu
			storyboard.gotoScene( "mainMenu","crossFade", 300 )		
		end

			--time of transition into mainmenu
			myTimer = timer.performWithDelay ( 2000 , goToMenu , 1 )	
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup=nil
		if myTimer then timer.cancel ( myTimer )
		end --this will cancel the timer function above		
end

function scene:didExitScene(event)
	storyboard.removeScene("splashScreen")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene