-- define a local table to store all references to functions/variables
--this will serve as Global Variable since its not good to use Global variables directly bcos of memory leaks and will make the system slower

local M = {}

local _W = display.viewableContentWidth --dynamic screen width getter
M._W = _W

local _H = display.viewableContentHeight --dynamic screen height getter
M._H = _H

local _HW = _W/2 --half of screen width
M._HW = _HW

local _HH = _H/2 -- half of screen height
M._HH = _HH


-- what category the player choose
--1 is for people
--2 is for places
--3 is for foods
--4 is for events
local selectedCategory = nil
M.selectedCategory = selectedCategory

local selectedLevel = nil
M.selectedLevel = selectedLevel

local qID = nil
M.qID = qID

local enableSound = true
M.enableSound = enableSound

local enableMusic = true
M.enableMusic = enableMusic

local backMusicHandler = nil
M.backMusicHandler = backMusicHandler

local clockTick = audio.loadSound("sounds/ticking.wav" ) --global clock tick sound
M.clockTick = clockTick

local clockTickSoundHandler = nil
M.clockTickSoundHandler = clockTickSoundHandler

local backMusic = audio.loadStream ( "sounds/backMusic.wav" ) -- game music
M.backMusic = backMusiclocal buzzSound =audio.loadSound ( "sounds/ding.wav" )M.buzzSound = buzzSound

local tapSound =  audio.loadSound ( "sounds/buttonPress.wav") --global tapsound
M.tapSound = tapSound

local wrongSound = audio.loadSound ( "sounds/wrong.wav") --global wrong sound
M.wrongSound = wrongSound

local correctSound = audio.loadSound ( "sounds/success.wav") --global wrong sound
M.correctSound = correctSound

local ifSolveUsed = nil
M.ifSolveUsed = ifSolveUsed

local newPlayerCoin = nil
M.newPlayerCoin = newPlayerCoin

local playID = nil
M.playID = playID

local playerName = nil
M.playerName = playerName

local peopleAns = nil
M.peopleAns = peopleAns

local placeAns = nil
M.placeAns = placeAns

local foodsAns = nil
M.foodsAns = foodsAns

local eventAns = nil
M.eventAns = eventAns

local peopleLevel = nil
M.peopleLevel = peopleLevel

local placeLevel = nil
M.placeLevel = placeLevel

local eventLevel = nil
M.eventLevel = eventLevel

local foodLevel = nil
M.foodLevel = foodLevel

-- Finally, return the table to be used locally elsewhere
return M