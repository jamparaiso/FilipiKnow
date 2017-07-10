print ( "Main..." )

--modules
local storyboard=require ( "storyboard" )
local myData = require ("myData")
local createPlayerDB = require ( "createPlayerDB" )
local createPlaceDB = require ( "createPlaceDB" )
local createPeopleDB = require ( "createPeopleDB" )
local createFoodDB = require ( "createFoodDB" )
local createEventsDB =require ( "createEventsDB" )
local addGameQuestions =require ( "addGameQuestions" )
local createPlayer = require ( "createPlayerProfile" )

--create game databases
createPlayerDB.createPlayer()
createPlaceDB.createPlace()
createPeopleDB.createPeople()
createFoodDB.createFood()
createEventsDB.createEvent()

--add questions in the database
addGameQuestions.addPeopleQuestion()
addGameQuestions.addPlaceQuestion()
addGameQuestions.addEventQuestion()
addGameQuestions.addFoodQuestion()

--add a single player profile
--createPlayer.createPlayerProfile()

storyboard.gotoScene("splashScreen")