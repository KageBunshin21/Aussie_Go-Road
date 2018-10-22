-----------------------------------------------------------------------------------------
--
-- sos.lua
-- created by Ashley Thorne-Jeffrey and Lynette Lowe
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
 
local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
function callSOS()
    -- hides the overlay with a fade effect lasting 400ms
    composer.hideOverlay( "fade", 400 )
    -- opens the devices phone with the number "000" ready to dial
    system.openURL("tel:000")
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

    local optionsBox = display.newRect( display.contentCenterX, display.contentCenterY, 240, 150 )
    sceneGroup:insert( optionsBox )
    optionsBox:setFillColor(0)

    local sosConfirmation = display.newImageRect( sceneGroup, "assets/sosConfirmation.png" , 240, 90 )
    sosConfirmation.x = display.contentCenterX
    sosConfirmation.y = display.contentCenterY - 35

    local sosYes = display.newImageRect( sceneGroup, "assets/yes.png" , 120, 90 )
    sosYes.x = display.contentCenterX - 60
    sosYes.y = display.contentCenterY + 30

    local sosNo = display.newImageRect( sceneGroup, "assets/no.png" , 120, 90 )
    sosNo.x = display.contentCenterX + 60
    sosNo.y = display.contentCenterY + 30

    sosYes:addEventListener( "tap", callSOS)
    sosNo:addEventListener( "tap", closeOverlay)

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