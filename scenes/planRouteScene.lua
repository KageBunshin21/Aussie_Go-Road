-----------------------------------------------------------------------------------------
--
-- 	planRouteScene.lua
--
-- 	This is the scene in which the plan my route is presented along
-- 	it contains the buttons that links to pages such as:
-- 	*tips and suggestions, facts, laws/by-laws and rules/regulations
--
--  Author: Michael Ibesa and Ricardo Felix Costa
--  Date: October 3, 2018
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

-- -----------------------------------------------------------------------------------
-- user interface stuff
-- -----------------------------------------------------------------------------------

--local widget = require( "widget" )

local X = display.contentCenterX
local Y = display.contentCenterY

-- font settings
titleFontStyle = "Impact"
subTitleFontStyle = "Calibri"
normalfontStyle = "Arial"
buttonFontStyle = "Lucida Sans"
titleFontSize = 40
subTitleFontSize = 30
normalFontSize = 20
align = "center"

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- function to go to Tips Page
local function goToTips()
    composer.removeScene( "scenes.planRouteScene" )
	composer.gotoScene( "scenes.tipsSuggestionsView", "crossFade", 500 )
    return true
end

local function goToFacts()
    composer.removeScene( "scenes.planRouteScene" )
	composer.gotoScene( "scenes.factsView", "crossFade", 500 )
    return true
end

local function goToLawsRegulations()
    composer.removeScene( "scenes.planRouteScene" )
	composer.gotoScene( "scenes.lawsRegulationsView", "crossFade", 500 )
    return true
end

local function goBack()
    composer.removeScene( "scenes.planRouteScene" )
    composer.gotoScene( "scenes.search", "crossFade", 500  )    
    return true
end



-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

	-- Display title "Plan My Route"
	local title = display.newText("Plan My Route", display.contentCenterX, 10, titleFontStyle, titleFontSize)
	sceneGroup:insert(title)

    --Show user different data based on location selected
    if _G.selectedLocation == 1 then
        local subTitle = display.newText(savedInfo["1"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 2 then
        local subTitle = display.newText(savedInfo["2"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 3 then
        local subTitle = display.newText(savedInfo["3"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 4 then
        local subTitle = display.newText(savedInfo["4"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 5 then
        local subTitle = display.newText(savedInfo["5"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 6 then
        local subTitle = display.newText(savedInfo["6"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 7 then
        local subTitle = display.newText(savedInfo["7"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 8 then
        local subTitle = display.newText(savedInfo["8"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 9 then
        local subTitle = display.newText(savedInfo["9"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 10 then
        local subTitle = display.newText(savedInfo["10"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 11 then
        local subTitle = display.newText(savedInfo["11"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 12 then
        local subTitle = display.newText(savedInfo["12"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 13 then
        local subTitle = display.newText(savedInfo["13"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 14 then
        local subTitle = display.newText(savedInfo["14"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    elseif _G.selectedLocation == 15 then
        local subTitle = display.newText(savedInfo["15"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        sceneGroup:insert(subTitle)
    end

	-- a button that links to tips and suggestion
	local tipsButton = display.newImageRect( sceneGroup, "assets/quickTips.png", 320, 70 )
    tipsButton.x = display.contentCenterX+3
    tipsButton.y = 125

	-- a button that links to facts page
	local factsButton = display.newImageRect( sceneGroup, "assets/factsIcon.png", 320, 70 )
    factsButton.x = display.contentCenterX+3
    factsButton.y = 230

	-- a button that links to Laws/By-laws
	local lawsButton = display.newImageRect( sceneGroup, "assets/lawsIcon.png", 320, 70 )
    lawsButton.x = display.contentCenterX+3
    lawsButton.y = 335

	-- a button that links back to the welcome screen
	local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX+3
    backButton.y = 480

	-- event listeners for the buttons
	tipsButton:addEventListener( "tap", goToTips)
	factsButton:addEventListener( "tap", goToFacts)
	lawsButton:addEventListener( "tap", goToLawsRegulations)
	backButton:addEventListener( "tap", goBack)

end

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

	-- clean up audio stuff
--	audio.stop()

--	for s,v in pairs( soundTable ) do
--		audio.dispose( soundTable[s] )
--		soundTable[s] = nil
--	end
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
