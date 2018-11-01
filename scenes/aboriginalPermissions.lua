-----------------------------------------------------------------------------------------
--
-- aboriginalPermissions.lua
-- created by Michael Ibesa and Ricardo Felix Costa
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
-- -------------------------------------------------------------------------------------
-- Scene event functions
-- -------------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local factTxt = [[Aboriginal land is private land and permission is required to visit. The CLC permit system allows regulated access to all Aboriginal land for visitors, workers, and researchers and for special projects. Permits are free and rarely refused.]]

  local options = {
     text = factTxt,
     x = display.contentCenterX,
     y = display.contentCenterY,
     width = 290,
     height = 350,
     fontSize = 18,
     align = "center",
     font ="assets/Arial.ttf"
  }

  local textField = display.newText( options )
  textField:setFillColor( 1, 1, 1 )
	sceneGroup:insert (textField)

    local title = display.newImageRect( sceneGroup, "assets/title.png" , 150, 60 )
    title.x = display.contentCenterX
    title.y = 10

    local linkButton = display.newImageRect("assets/moreinfo.png", 194, 66)
      linkButton.x=display.contentCenterX
      linkButton.y=300

      function linkButton:tap(event)
        system.openURL( "https://www.clc.org.au/index.php?/articles/info/visiting-aboriginal-land")
      end
        linkButton:addEventListener("tap", linkButton)
        sceneGroup:insert (linkButton)

    local function goBack()
    composer.gotoScene( "scenes.mainMenu", "crossFade", 500  )
    end

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
