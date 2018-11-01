-----------------------------------------------------------------------------------------
--
-- safetyTips.lua
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
            topPadding = 475,
            bottomPadding = -400,
            horizontalScrollDisable = true,
            verticalScrollDisable = false,
            listener = scrollListener,
            backgroundColor = { 0, 0, 0}
        }
    )

    -- Create large text string
    local safetyTipsText = [[
    Swim between the flags. The red and yellow flags on Australian beaches show you where it is safe to swim and where a lifeguard is on duty. Also take notice of any warning signs you see at the beach and be sure to ask a lifeguard if you’re unsure whether the water is safe. A singular yellow flag warns that conditions are potentially dangerous whilst a red flag shows that the beach is closed due to excessively dangerous swimming conditions.

    In Alice Springs there has been an increase of tourists who have been attacked, robbed, and raped. It warns that tourists should only park campervans on sites that offer security surveillance.

    Consequently roads variy greatly in type, surface and the provision of services en route. There are often very long distances between towns which have fuel, water and/or food. So pack some snacks!

    Make sure you take a break from driving every 3 or 4 hours.

    Many remote roads are unsealed. Drivers should take care when driving on dirt/mud roads, as this is where most people crash or become stuck.

    Make sure to have extra fuel put away in jerry cans as there is a chance that you may run out before the next fuel station (sometimes fuel stations are not open on certain days during the week along the country roads and may prolong the driving further).

    The blue asbestos dust present in and around Wittenoom may cause cancer if inhaled (Geocentral Datum Australia, 2006) while the risk from such fibres to short term visitors is significantly less than to residents, the Ashburton Shire Council advocates avoidance of the Wittenoom area.

    Be aware of marine stingrays in coastal areas (October to April), and swim within enclosures where possible.

    Carry enough cash to spend an extra night in accommodation if your vehicle breaks down or roads are impassable, but not too much cah as to jeopardise your safety.

    In Central Australia, rainfall can make some roads impassable, even with a four-wheel-drive vehicle. Full information on road conditions should be obtained from local authorities before departure.
    ]]
    -- Create a image and insert it into the scroll view
    local someTextObject = display.newText( safetyTipsText, 0,320,300,0, "assets/Arial.ttf", 18 )
    someTextObject.x = display.contentCenterX
    scrollView:insert (someTextObject)
  	sceneGroup:insert (scrollView)

    local title = display.newImageRect( sceneGroup, "assets/safetyTips.png" , 320, 75 )
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
