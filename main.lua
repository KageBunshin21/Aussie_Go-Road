-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
 
-- Hide status bar
display.setStatusBar( display.HiddenStatusBar )
 
-- Seed the random number generator
math.randomseed( os.time() )

-- Go to the intro screen
composer.gotoScene("scenes.intro" )
 
-- Go to the menu screen
--composer.gotoScene("scenes.mainMenu")

-- Go to the Update screen
--composer.gotoScene("scenes.update")
--notification
--doesn't exist!

-- Go to the Warnings screen
--composer.gotoScene("scenes.warnings") 

-- Go to the Report Incident screen
--composer.gotoScene("scenes.reportIncident")

-- Go to the Search Bar screen
--composer.gotoScene("scenes.searchBar")
--doesn't exist!

-- Go to the Plan My Route screen
--composer.gotoScene("scenes.planMyRoute")

-- Go to the Tips and Tricks screen
--composer.gotoScene("scenes.tipsAndTricks")

-- Go to the Interesting Facts screen
--composer.gotoScene("scenes.interestingFacts")

-- Go to the Laws and Bylaws screen
--composer.gotoScene("scenes.lawsAndBylaws")

-- Go to the Rules and regulations screen
--composer.gotoScene("scenes.rulesAndRegulations")
--link to permissions

-- Go to the GPS screen
--composer.gotoScene("scenes.gps")

-- Go to the SOS button screen
--composer.gotoScene("scenes.sos")

-- Go to the Exit screen
--composer.gotoScene("scenes.exit")
------------------------------------------------------------------------------------------
