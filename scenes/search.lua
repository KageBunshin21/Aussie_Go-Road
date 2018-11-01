-----------------------------------------------------------------------------------------
--
-- search.lua
-- created by Ashley Thorne-Jeffrey and Lynette Lowe
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
 
local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
local function goBack()
	composer.gotoScene( "scenes.intro" )
end

local function goKarijini()
	_G.selectedLocation = 1
    composer.gotoScene( "scenes.planRouteScene" )    
end

local function goKalgoorlie()
	_G.selectedLocation = 2 
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goBarossa()
	_G.selectedLocation = 3
    composer.gotoScene( "scenes.planRouteScene" )    
end

local function goAnangu()
	_G.selectedLocation = 4
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goOceanRoad()
	_G.selectedLocation = 5
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goGrampians()
	_G.selectedLocation = 6
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goKakadu()
	_G.selectedLocation = 7
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goUluru()
	_G.selectedLocation = 8
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goBarrierReef()
	_G.selectedLocation = 9
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goKuranda()
	_G.selectedLocation = 10
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goSydney()
	_G.selectedLocation = 11 
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goBlueMountains()
	_G.selectedLocation = 12
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goCanberra()
	_G.selectedLocation = 13
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goCradleMountain()
	_G.selectedLocation = 14
    composer.gotoScene( "scenes.planRouteScene" )
end

local function goFreycinet()
	_G.selectedLocation = 15
    composer.gotoScene( "scenes.planRouteScene" )
end



-- -------------------------------------------------------------------------------------
-- Scene event functions
-- -------------------------------------------------------------------------------------
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    local background = display.newImageRect( sceneGroup, "assets/searchlocations.png", 320, 345 )
    background.x = display.contentCenterX
    background.y = display.contentCenterY + 15

    local title = display.newImageRect( sceneGroup, "assets/title.png" , 150, 60 )
    title.x = display.contentCenterX
    title.y = 10

    local subtitle = display.newImageRect( sceneGroup, "assets/searchsubtitle.png" , 213, 50 )
    subtitle.x = display.contentCenterX
    subtitle.y = 60
    
    local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX
    backButton.y = 468
    backButton:addEventListener( "tap", goBack)

    --create buttons to send user to different search pages
    local karijiniButton = display.newImageRect( sceneGroup, "assets/karijiniButton.png", 160, 43 )
	karijiniButton.x = 78
	karijiniButton.y = 104
	karijiniButton:addEventListener("tap", goKarijini)

	local kalgoorlieButton = display.newImageRect( sceneGroup, "assets/kalgoorlieButton.png", 160, 43 )
	kalgoorlieButton.x = 240
	kalgoorlieButton.y = 104
	kalgoorlieButton:addEventListener("tap", goKalgoorlie)

	local barossaButton = display.newImageRect( sceneGroup, "assets/barossaButton.png", 160, 43 )
	barossaButton.x = 78
	barossaButton.y = 147
	barossaButton:addEventListener("tap", goBarossa)

	local ananguButton = display.newImageRect( sceneGroup, "assets/ananguButton.png", 160, 43 )
	ananguButton.x = 240
	ananguButton.y = 147
	ananguButton:addEventListener("tap", goAnangu)

	local oceanRoadButton = display.newImageRect( sceneGroup, "assets/oceanRoadButton.png", 160, 43 )
	oceanRoadButton.x = 78
	oceanRoadButton.y = 190
	oceanRoadButton:addEventListener("tap", goOceanRoad)

	local grampiansButton = display.newImageRect( sceneGroup, "assets/grampiansButton.png", 160, 43 )
	grampiansButton.x = 240
	grampiansButton.y = 190
	grampiansButton:addEventListener("tap", goGrampians)

	local kakaduButton = display.newImageRect( sceneGroup, "assets/kakaduButton.png", 160, 43 )
	kakaduButton.x = 78
	kakaduButton.y = 233
	kakaduButton:addEventListener("tap", goKakadu)

	local uluruButton = display.newImageRect( sceneGroup, "assets/uluruButton.png", 160, 43 )
	uluruButton.x = 240
	uluruButton.y = 233
	uluruButton:addEventListener("tap", goUluru)

	local barrierReefButton = display.newImageRect( sceneGroup, "assets/barrierReefButton.png", 160, 43 )
	barrierReefButton.x = 78
	barrierReefButton.y = 276
	barrierReefButton:addEventListener("tap", goBarrierReef)

	local kurandaButton = display.newImageRect( sceneGroup, "assets/kurandaButton.png", 160, 43 )
	kurandaButton.x = 240
	kurandaButton.y = 276
	kurandaButton:addEventListener("tap", goKuranda)

	local sydneyButton = display.newImageRect( sceneGroup, "assets/sydneyButton.png", 160, 43 )
	sydneyButton.x = 78
	sydneyButton.y = 319
	sydneyButton:addEventListener("tap", goSydney)

	local blueMountainsButton = display.newImageRect( sceneGroup, "assets/blueMountainsButton.png", 160, 43 )
	blueMountainsButton.x = 240
	blueMountainsButton.y = 319
	blueMountainsButton:addEventListener("tap", goBlueMountains)

	local canberraButton = display.newImageRect( sceneGroup, "assets/canberraButton.png", 160, 43 )
	canberraButton.x = 78
	canberraButton.y = 362
	canberraButton:addEventListener("tap", goCanberra)

	local cradleMountainButton = display.newImageRect( sceneGroup, "assets/cradleMountainButton.png", 160, 43 )
	cradleMountainButton.x = 240
	cradleMountainButton.y = 362
	cradleMountainButton:addEventListener("tap", goCradleMountain)

	local freycinetButton = display.newImageRect( sceneGroup, "assets/freycinetButton.png", 160, 43 )
	freycinetButton.x = display.contentCenterX
	freycinetButton.y = 405
	freycinetButton:addEventListener("tap", goFreycinet)
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