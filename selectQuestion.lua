print ( "selectQuestion..." )

--module
local storyboard = require("storyboard")
local myData = require("myData")
local widget = require ( "widget" )
local tableView = require("tableView")
local getQuestions = require ( "getQuestions" )
local tapSound = require ( "tapSound" )
local ui = require("ui")

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

--setup the table
local data = {}  --note: the declaration of this variable was moved up higher to broaden its scope
local g
local button = display.newGroup()
local detailScreen = display.newGroup()
--position of the slide on the top
local topBoundary = display.screenOriginY + 70
local bottomBoundary = display.screenOriginY + 65

local myTimer

local levelQuestions = {}
levelQuestions = getQuestions.getSelectedQuestions()

--callback function if the navtop is tapped
local function scrollToTop()
	myList:scrollTo(topBoundary-1)
end

--dynamic list view
--shows all the top 10 player
for i = 1, #levelQuestions do
	data[i] = {}
	data[i].questionID = levelQuestions[i].questionID
	data[i].answer = levelQuestions[i].answer 

	data[i].image = levelQuestions[i].imgPath
	data[i].hint = levelQuestions[i].hint
	data[i].trivia = levelQuestions[i].trivia
	data[i].level = levelQuestions[i].level
	data[i].status = levelQuestions[i].status

end

local screenGroup
local buttonGroup = display.newGroup ( )
local background

local function backButtonEventHandler(event)
	local phase = event.phase
	
	if "ended" == phase then
		print ( "back button is pressed" )
		tapSoundEffect = tapSound.checkSound()
		myData.selectedLevel = nil
		
		storyboard.gotoScene("selectLevel",{
				effect="slideLeft",
				time = 250,
		})
	end
end

local function listButtonRelease(event)
	self = event.target
	local id = self.id
	
	print (data[id].answer)
	print (data[id].questionID)
	
	myData.qID = data[id].questionID
	
	delta, velocity = 0, 0
	
--[[storyboard.gotoScene("mainMenu",{
		effect = "slideLeft",
		time = 250,
})]]--

		transition.to(myList, {time=400, x=display.contentWidth*-1, transition=easing.outExpo })
		transition.to(detailScreen, {time=400, x=0, transition=easing.outExpo })

		delta, velocity = 0, 0
	
		local gotoHere = function()

			--switches into the mainmenu
			storyboard.gotoScene( "gameProper","crossFade", 300 )		
		end		
		
		myTimer = timer.performWithDelay ( 500, gotoHere ,1 )
		
		--Runtime:addEventListener ( "touch", swipeEvent )	
end

function scene:createScene(event)
	screenGroup = self.view

	
	background = display.newImage("images/bg.png")
	background.x = _W*.5 ; background.y = _H*.5

	
	screenGroup:insert(background)

end

function scene:enterScene(event)
-- create the list of items
myList = tableView.newList{
	data=data,
	--default="images/listItemBg.png",
	default="images/listItemBg_white.png",
	over="images/listItemBg_over.png",
	--onRelease = youTappedMe,
	onRelease=listButtonRelease,
	top=topBoundary,
	bottom=bottomBoundary,
    callback = function( row )
                          g = display.newGroup()
                          
                         if (row.status == 0) then
                         	
                         	local img = display.newImage(row.image)
                         	g:insert(img)
                         	img.x = math.floor(img.width*0.3 + 6)
                         	img.y = math.floor(img.height*0.2)
						 	img.yScale = .5
						 	img.xScale = .5
						 
						 elseif (row.status == 1) then
						 
                         	local img = display.newImage(row.image)
                         	g:insert(img)
                         	img.x = math.floor(img.width*0.3 + 6)
                         	img.y = math.floor(img.height*0.2)
						 	img.yScale = .5
						 	img.xScale = .5
						 	img.alpha = .6						 
                         end
                         
						--inserts the title of the img
						 if (row.status == 0) then
						 	 
                         	local answer =  display.newText( row.answer, 0, 0, native.systemFont, 12 )
                         	answer:setTextColor(0, 0, 0)
                         	--title:setTextColor(255, 255, 255)
                         	g:insert(answer)
                         	answer.x = answer.width*0.09 + 180 + 6
                         	answer.y = 30
                         
						 end

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
	
end

function scene:exitScene(event)
	screenGroup:removeSelf()
	screenGroup= nil
	if g ~= nil then
	g:removeSelf()
	g = nil
	end
	button:removeSelf()
	button = nil
	data = nil
	if myTimer then timer.cancel ( myTimer )
	end --this will cancel the timer function above
end

function scene:didExitScene(event)
	storyboard.removeScene("selectQuestion")
end

scene:addEventListener ( "createScene", scene )
scene:addEventListener ( "enterScene", scene )
scene:addEventListener ( "exitScene", scene )
scene:addEventListener ( "didExitScene", scene )

return scene