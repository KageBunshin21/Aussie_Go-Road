-----------------------------------------------------------------------------------------
--
-- reportIncidents.lua
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
    composer.gotoScene( "scenes.mainMenu" )
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
            topPadding = 35,
            bottomPadding = 0,
            horizontalScrollDisable = true,
            verticalScrollDisable = false,
            listener = scrollListener,
            backgroundColor = { 0, 0, 0}
        }
    )

    -- Create large text string
    local safetyTipsText = [[
  Before reporting a hazard, consider making a note of the hazard’s location - if possible, identify a landmark that will make the location easy to find.

                        ACT
  For hazards on roads please inform Main Roads ACT by calling 132 281.

                        NT
  For hazards on roads please inform Main Roads NT by calling 1800 246 199.

                        QLD
  For hazards on roads please inform Main Roads QLD by calling 131 940.

                        SA
  For hazards on roads please inform Main Roads SA by calling 1800 018 313.

                        TAS
  For hazards on roads please inform Main Roads TAS by calling 1300 139 933.

                        WA
  For hazards on roads please inform Main Roads WA by calling 138 138.
]]
    -- Create a image and insert it into the scroll view
    local someTextObject = display.newText( safetyTipsText, 0,320,300,0, "assets/Arial.ttf", 18 )
    someTextObject.x = display.contentCenterX
    scrollView:insert (someTextObject)
  	sceneGroup:insert (scrollView)

    local title = display.newImageRect( sceneGroup, "assets/title.png" , 150, 60 )
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
