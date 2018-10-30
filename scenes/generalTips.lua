-----------------------------------------------------------------------------------------
--
-- Interesting Facts_scene.lua
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
            topPadding = 220,
            bottomPadding = -200,
            horizontalScrollDisable = true,
            verticalScrollDisable = false,
            listener = scrollListener,
            backgroundColor = { 0, 0, 0}
        }
    )

    -- Create large text string
    local generalTipsText = [[
    Be aware of sharks while swimming, although shark attacks are rare. Travellers should still take into consideration. Swim between the red and yellow flags and avoid swimming in dusk or evening and in deep water.

    Crocodiles should be considered in the northern areas of Australia. There is generally always multiple signage advising of a crocodile area but ask for expert advice before camping or fishing near a river, deep pool or mangrove. Never stay or camp in areas with crocodile tracks, especially close to the water’s edge.

    Australia is a large country with a highly urbanised population of ca. 24 million clustered along the coast.

    Always carry a valid driving license and a translation if the license isn't in English.

    Do not interfere with the flora and fauna when staying in national parks. Penalties can apply for lighting fires, damaging bushland or trying to interact with the wildlife.

    Do not drive along the Nullabor or any other country roads between the hours of dusk and dawn as Kangaroos are always known to be out in this time crossing (this may cause car accidents).

    When crossing the border into other states make sure to check for certain food items that may not be allowed in to other states (i.e. fruit from WA is not allowed to cross in to SA via car as it may attract certain fruit flies).

    Plan your drive in advance.

    Plan your accommodation in advance.
    ]]
    -- Create a image and insert it into the scroll view
    local someTextObject = display.newText( generalTipsText, 0,320,300,0, "/assets/Arial.ttf", 18 )
    someTextObject.x = display.contentCenterX
    scrollView:insert (someTextObject)
  	sceneGroup:insert (scrollView)

    local title = display.newImageRect( sceneGroup, "/assets/generalTips.png" , 150, 60 )
    title.x = display.contentCenterX
    title.y = 10

    local backButton = display.newImageRect( sceneGroup, "/assets/back.png", 150, 60 )
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
