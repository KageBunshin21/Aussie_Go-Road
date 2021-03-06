-----------------------------------------------------------------------------------------
--
-- mainMenu.lua
-- created by Ashley Thorne-Jeffrey and Lynette Lowe
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------

local function gotoReportIncidents()
    composer.gotoScene( "scenes.reportIncidents", "crossFade", 500 )
end

local function gotoPlanMyRoute()
    composer.gotoScene( "scenes.tipsAndTricks", "crossFade", 500 )
end

local function gotoAboriginalPermissions()
    composer.gotoScene( "scenes.aboriginalPermissions", "crossFade", 500 )
end

local function gotoAbout()
    composer.gotoScene( "scenes.about", "crossFade", 500 )
end

local function gotoIntro()
    composer.gotoScene( "scenes.intro", "crossFade", 500 )
end


-- -------------------------------------------------------------------------------------
-- Scene event functions
-- -------------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local title = display.newImageRect( sceneGroup, "assets/title.png" , 150, 60 )
    title.x = display.contentCenterX
    title.y = 10

    local menuButton1 = display.newImageRect( sceneGroup, "assets/reportincidents.png", 320, 75 )
    menuButton1.x = display.contentCenterX
    menuButton1.y = 125

    local menuButton2 = display.newImageRect( sceneGroup, "assets/tips.png", 320, 75 )
    menuButton2.x = display.contentCenterX
    menuButton2.y = 200

    local menuButton3 = display.newImageRect( sceneGroup, "assets/aboriginalpermissions.png", 320, 75 )
    menuButton3.x = display.contentCenterX
    menuButton3.y = 275

    local menuButton4 = display.newImageRect( sceneGroup, "assets/about.png", 320, 75 )
    menuButton4.x = display.contentCenterX
    menuButton4.y = 350

    local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX
    backButton.y = 468

    menuButton1:addEventListener( "tap", gotoReportIncidents)
    menuButton2:addEventListener( "tap", gotoPlanMyRoute)
    menuButton3:addEventListener( "tap", gotoAboriginalPermissions)
    menuButton4:addEventListener( "tap", gotoAbout)
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
