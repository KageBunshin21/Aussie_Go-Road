-----------------------------------------------------------------------------------------
--
-- search.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
 
local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
local function gotoIntro()
    composer.gotoScene( "scenes.intro" )
end

local function Search()
	--this function should create the search bar
	--the search bar interaction should then appear in the show event stage
	local Targets = savedInfo
	local SearchTerm = io.write("Please enter your target location:	", 160, 240, "Arial", 35)
	--local SearchTerm = native.newTextField ("Please enter your target location:	" x, y, 160, 240, "Arial", 35)
											--need to display this instruction	(x, y, width, height)
	--local Selection = io.read()
	--local newvar = false
	--for i in Targets
		--local Selection = Targets: get.line B
		--if (Selection ~= SearchTerm) then
			--do nothing
		--elseif (Selection == SearchTerm) then
			--newvar = true
		--end
	--end
		if (newvar == false) then
			local noSelection = display.newText(" That location does not exist. ", 160, 240, "Arial", 35)
			--Search = io.write("Please enter your target location:	", 160, 240, "Arial", 35)
			--Selection = io.read()
		elseif (newvar == true) then
			composer.gotoScene("scenes.planRouteScene")
		end
end

function closeOverlay()
    -- hides the overlay with a fade effect lasting 400ms
    composer.hideOverlay( "fade", 400 )
end

-- -------------------------------------------------------------------------------------
-- Scene event functions
-- -------------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local background = display.newImageRect( sceneGroup, "assets/newaustralia.png", 320, 480 )
    background.x = display.contentCenterX
    background.y = display.contentCenterY

    local title = display.newImageRect( sceneGroup, "assets/title.png" , 150, 60 )
    title.x = display.contentCenterX
    title.y = 10
    
    local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX
    backButton.y = 468

    backButton:addEventListener( "tap", gotoIntro)

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
		
		local defaultField
		local Targets = savedInfo
		local track = false

		local function textListener( event )
 
			if ( event.phase == "began" ) then
				-- User begins editing "defaultField"
		 
			elseif ( event.phase == "ended" or event.phase == "submitted" ) then
				-- Output resulting text from "defaultField"
				local selection = event.target.text
				print( selection )
				
				for line in Targets:lines do
					local location = lines[B]
					if (selection ~= location) then
						track = false
					elseif (selection == location) then
						track= true
						print (location)
						--location needs to be passed to plan my route
						composer.gotoScene("scenes.planRouteScene")
						--open destination info
					end
				end
		 
			elseif ( event.phase == "editing" ) then
				print( event.newCharacters )
				print( event.oldText )
				print( event.startPosition )
				print( event.text )
			end
		end
 
		-- Create text field
		defaultField = native.newTextField( 150, 150, 180, 30 )
		defaultField:addEventListener( "userInput", textListener )
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