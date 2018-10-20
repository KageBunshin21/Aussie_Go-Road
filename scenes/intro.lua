-----------------------------------------------------------------------------------------
--
-- intro.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
 
local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function gotoSearch()
	--this function should creat the search bar
	--the search bar interaction should then appear in the show event stage
		--if the input is a target link to load info
	composer.gotoScene("scenes.search")
end

local function gotoGPS()
	--GPS functionality should be added here
	--the pop up for the GPS coordinates should go in show scene
	composer.gotoScene("scenes.gps")
end

local function gotoMainMenu()
	composer.gotoScene("scenes.mainMenu")
end

local function gotoWarning()
	--Warning functionality should be added here
	--the Warning pop up should check if there is a valid warning
		-- if yes it should should show warnin
		--goes in show scene
					
		-- Handler that gets notified when the alert closes
		--local function onComplete( event )
		--	if ( event.action == "clicked" ) then
		--		local i = event.index
		--		if ( i == 1 ) then
					-- Do nothing; dialog will disply the no warnings message
		--			local noWarning = display.newText("No current warnings in your vicinity", 160, 240, "Arial", 35)
		--			noWarning:setFillColor(0.0, 0.5, 0.9)
		--		elseif ( i == 2 ) then
					-- Open URL if "Learn More" (second button) was clicked
					--get warning
					--
		--		end
		--	end
		--end
		  
		-- Show alert with two buttons
		--local alert = native.showAlert( "Corona", "Dream. Build. Ship.", { "OK", "Learn More" }, onComplete )
		
 --new stuff end
		
	composer.gotoScene("scenes.warnings")
end

local function gotoSOS()
	composer.gotoScene("scenes.sos")	
end

local function gotoExit()
	composer.gotoScene("scenes.exit")	
end

-----ERRROOORRRR

-- -------------------------------------------------------------------------------------
-- Scene event functions
-- -------------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
	local sceneGroup = self.view
	-- Code here runs when the scene is first created but has not yet appeared on screen

	local background = display.newImageRect( sceneGroup, "/assets/newaustralia.png", 320, 480 )
	background.x = display.contentCenterX
	background.y = display.contentCenterY

	local title = display.newImageRect( sceneGroup, "/assets/title.png" , 150, 60 )
	title.x = display.contentCenterX
	title.y = 10
	
-- -------------------------------------------------------------------------------------
-- Buttons
-- -------------------------------------------------------------------------------------	
	
	local SearchButton = display.newImageRect( sceneGroup, "/assets/search.png", 65, 65 )
	SearchButton.x = 40
	SearchButton.y = 10
	
	local GPSButton = display.newImageRect( sceneGroup, "/assets/gps.png", 65, 65 )
	GPSButton.x = 280
	GPSButton.y = 10

	local WarningButton = display.newImageRect( sceneGroup, "/assets/warning.png", 90, 90 )
	WarningButton.x = 55
	WarningButton.y = 365

	local menuButton = display.newImageRect( sceneGroup, "/assets/mainMenu.png", 150, 60 )
	menuButton.x = display.contentCenterX
	menuButton.y = 468
	
	local SOSButton = display.newImageRect( sceneGroup, "/assets/SOS.png", 65, 65 )
	SOSButton.x = 40
	SOSButton.y = 470
	
	local ExitButton = display.newImageRect( sceneGroup, "/assets/exit.png", 65, 65 )
	ExitButton.x = 280
	ExitButton.y = 470
	
-- -------------------------------------------------------------------------------------

	SearchButton:addEventListener( "tap", gotoSearch)
	GPSButton:addEventListener( "tap", gotoGPS)
	menuButton:addEventListener( "tap", gotoMainMenu)
	WarningButton:addEventListener( "tap", gotoWarning)
	SOSButton:addEventListener( "tap", gotoSOS)
	ExitButton:addEventListener( "tap", gotoExit)
end

-- -------------------------------------------------------------------------------------
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene