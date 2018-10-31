-----------------------------------------------------------------------------------------
--
-- securityTips.lua
-- created by Michael Ibesa and Ricardo Felix Costa
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function goBack()
    composer.gotoScene( "scenes.tipsAndTricks" )
end

-- -------------------------------------------------------------------------------------
-- Scene event functions
-- -------------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local widget = require( "widget" )

    -- ScrollView listener
    local function scrollListener( event )
        local phase = event.phase
        local direction = event.direction

        -- In the event a scroll limit is reached...
    if event.limitReached then
          if "up" == direction then
          print ( "Reached top limit")
          elseif "down" == direction then
          print ( "Reached bottom limit")
          end
    end

        return true
    end

    -- Create the widget
    local scrollView = widget.newScrollView(
        {
            left = 0,
            top = 70,
            width = display.contentWidth,
            height = 350,
            topPadding = 255,
            bottomPadding = -200,
            horizontalScrollDisable = true,
            verticalScrollDisable = false,
            listener = scrollListener,
            backgroundColor = { 0, 0, 0}
        }
    )

    -- Create large text string
    local securityTipsText = [[
    If you think you’ll be using a public Wi-Fi network on a regular basis, set-up a VPN (Virtual Private Network) before you travel. This encrypted connection will keep your device and your data safe from any would-be hackers.

    Make sure you take a break from driving every 3 or 4 hours.

    Take a satellite phone if possible. Many remote areas have no signal whatsoever and it could be hours of driving between phone lines. Satellite phones can be rented in capital cities or larger towns.

    Many Aboriginal communities and areas (especially in Northern Australia) require permission to enter the land. This approval must be granted by the local government prior to arriving.

    Natural landmarks may have cultural/legal restrictions (e.g. Uluru). Always check signage and ask for expert advice before touching, taking photos of, or climbing on landmarks.

    Do not travel along country roads alone if you do not know them well (some country roads are not on maps and can make it especially hard if you are lost).

    While visitors are permitted in the township of Woomera, entry to the Woomera Prohibited Area is by permit only, entry in the immediate corridors of the Stuart Highway and the Road from Coober Pedy to William Creek. Camping is not permitted in the area.

    When travelling on the Great Central Road from WA to NT, Anne Beadell and Gun Barrell Highway and Tanami Rd, make sure you have the appropriate permits to enter these areas.

    ]]
    -- Create a image and insert it into the scroll view
    local someTextObject = display.newText( securityTipsText, 0,320,300,0, "assets/Arial", 18 )
    someTextObject.x = display.contentCenterX
    scrollView:insert (someTextObject)
    sceneGroup:insert (scrollView)

    local title = display.newImageRect( sceneGroup, "assets/securityTips.png" , 320, 75 )
    title.x = display.contentCenterX
    title.y = 10

    local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX
    backButton.y = 468

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
