-----------------------------------------------------------------------------------------
--
-- tipsSuggestionsView.lua
--
-- 	tips and suggestions on target location
--
--  Author: Michael Ibesa and Ricardo Felix Costa
--  Date: October 15, 2018
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

local widget = require( "widget" )

local X = display.contentCenterX
local Y = display.contentCenterY



-- -----------------------------------------------------------------------------------
-- functions
-- -----------------------------------------------------------------------------------
-- a function to open the links
local function viewWebPage(event)
	system.openURL( url )
end

-- scrollView listener
local function scrollListener( event )
	local phase = event.phase
	local direction = event.direction

	if "began" == phase then
	  --print( "Began" )
	elseif "moved" == phase then
	  --print( "Moved" )
	elseif "ended" == phase then
	  --print( "Ended" )
	end

	if (event.limitReached) then
		if (event.direction == "up") then print("Reached top limit")
		elseif (event.direction == "down") then print("Reached bottom limit")
		end
	end

	return true
end

-- function to go back to plan my route scene
local function goToPlanRouteScene()
	composer.removeScene( "scenes.tipsSuggestionsView" )
	composer.gotoScene( "scenes.planRouteScene", "crossFade", 500 )    
    return true
end

-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

-- -----------------------------------------------------------------------------------
-- widgets
-- -----------------------------------------------------------------------------------

local widget = require( "widget" )

-- Create a scrollView
scrollView = widget.newScrollView ({
	left = 0,
	top = 70,
	width = display.contentWidth,
	height = 380,
	topPadding = 0,
	bottomPadding = 30,
	horizontalScrollDisable = true,
	verticalScrollDisable = false,
	listener = scrollListener,
	backgroundColor = { 0, 0, 0}
})

-- -----------------------------------------------------------------------------------

	-- set up tips as background image
	--[[local background = display.newImageRect( "/assets/tips.png", display.actualContentWidth, display.actualContentHeight )
    background.x = display.contentCenterX
    scrollView:insert (background)
	sceneGroup:insert(scrollView)]]--

	-- Display title "Plan My Route"
	local title = display.newText("Tips & Suggestions", display.contentCenterX , 10 , display.contentWidth * .8, 0, titleFontStyle, titleFontSize*.8)

-- -----------------------------------------------------------------------------------
-- tips text and links
-- -----------------------------------------------------------------------------------
	url = ""
	local subTitle
	local tipsTextObject
	local linkText



	--Storing and displaying various different things based on what the user selected
	if _G.selectedLocation == 1 then
		url = savedInfo["1"]["H"]
		subTitle = display.newText(savedInfo["1"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["1"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 2 then
		url = savedInfo["2"]["H"]
		subTitle = display.newText(savedInfo["2"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["2"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 3 then
		url = savedInfo["3"]["H"]
		subTitle = display.newText(savedInfo["3"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["3"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 4 then
		url = savedInfo["4"]["H"]
		subTitle = display.newText(savedInfo["4"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["4"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    elseif _G.selectedLocation == 5 then
		url = savedInfo["5"]["H"]
		subTitle = display.newText(savedInfo["5"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["5"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 6 then
		url = savedInfo["6"]["H"]
		subTitle = display.newText(savedInfo["6"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["6"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 7 then
		url = savedInfo["7"]["H"]
		subTitle = display.newText(savedInfo["7"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["7"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 8 then
		url = savedInfo["8"]["H"]
		subTitle = display.newText(savedInfo["8"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["8"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    elseif _G.selectedLocation == 9 then
		url = savedInfo["9"]["H"]
		subTitle = display.newText(savedInfo["9"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["9"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 10 then
		url = savedInfo["10"]["H"]
		subTitle = display.newText(savedInfo["10"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["10"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    elseif _G.selectedLocation == 11 then
		url = savedInfo["11"]["H"]
		subTitle = display.newText(savedInfo["11"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["11"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 12 then
		url = savedInfo["12"]["H"]
		subTitle = display.newText(savedInfo["12"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["12"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 13 then
		url = savedInfo["13"]["H"]
		subTitle = display.newText(savedInfo["13"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["13"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 14 then
		url = savedInfo["14"]["H"]
		subTitle = display.newText(savedInfo["14"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["14"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    elseif _G.selectedLocation == 15 then
		url = savedInfo["15"]["H"]
		subTitle = display.newText(savedInfo["15"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
		tipsTextObject = display.newText( savedInfo["15"]["G"], 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	linkText = display.newText( "Tap here for more information.", 0 , tipsTextObject.height+50 , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	end

	tipsTextObject.x = display.contentCenterX
	tipsTextObject.anchorY = 0
	linkText.x = display.contentCenterX
	linkText.anchorY = 0


-- -----------------------------------------------------------------------------------


	-- a button that links back to the plan my route scene
	local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX+3
    backButton.y = 480

	-- inserting objects to scrollview
	scrollView:insert(tipsTextObject)
	scrollView:insert(linkText)

	-- inserting scrollView to sceneGroup
	sceneGroup:insert(title)
	sceneGroup:insert(subTitle)
	sceneGroup:insert(scrollView)

	-- event listeners
	linkText:addEventListener( "tap", viewWebPage)
	backButton:addEventListener( "tap", goToPlanRouteScene)

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
