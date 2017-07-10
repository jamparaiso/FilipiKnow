print ( "selectCategory..." )

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
local backgroundlocal tapSoundEffect
local backMusicEffect

function scene:createScene(event)
	
end

function scene:enterScene(event)
	
end

function scene:exitScene(event)
	
end

function scene:didExitScene(event)
	
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene