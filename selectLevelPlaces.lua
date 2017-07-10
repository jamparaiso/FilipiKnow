print ( "selectLevelPlaces..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local scene = storyboard.newScene()
--screen height and width, this was declared in myData.lua
local _H = myData._H
local _W = myData._W
local _HH = myData._HH
local _HW = myData._HW

local screenGroup
local background
	
	background = display.newImageRect ( "images/bg.png", _W  , _H )
	background.x = _W*.5 ; background.y = _H*.5
	
	screenGroup:insert(background)
	local levelOneButton = widget.newButton( {
	local levelTwoButton = widget.newButton( {
	local levelThreeButton = widget.newButton( {
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )