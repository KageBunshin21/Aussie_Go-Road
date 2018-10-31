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
    composer.gotoScene( "scenes.intro" )
end

local function goKalgoorlie()
    composer.gotoScene( "scenes.intro" )
end

local function goBarossa()
    composer.gotoScene( "scenes.intro" )
end

local function goAnangu()
    composer.gotoScene( "scenes.intro" )
end

local function goOceanRoad()
    composer.gotoScene( "scenes.intro" )
end

local function goGrampians()
    composer.gotoScene( "scenes.intro" )
end

local function goKakadu()
    composer.gotoScene( "scenes.intro" )
end

local function goUluru()
    composer.gotoScene( "scenes.intro" )
end

local function goBarrierReef()
    composer.gotoScene( "scenes.intro" )
end

local function goKuranda()
    composer.gotoScene( "scenes.intro" )
end

local function goSydney()
    composer.gotoScene( "scenes.intro" )
end

local function goBlueMountains()
    composer.gotoScene( "scenes.intro" )
end

local function goCanberra()
    composer.gotoScene( "scenes.intro" )
end

local function goCradleMountain()
    composer.gotoScene( "scenes.intro" )
end

local function goFreycinet()
    composer.gotoScene( "scenes.intro" )
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
    local karijiniButton = display.newRect(0,0,150,30)
	karijiniButton:setFillColor(255,0,0)
	karijiniButton.x = 78
	karijiniButton.y = 104
	karijiniButton.alpha = 0
	karijiniButton.isHitTestable = true
	karijiniButton:addEventListener("tap", goKarijini)

	local kalgoorlieButton = display.newRect(0,0,150,30)
	kalgoorlieButton:setFillColor(255,0,0)
	kalgoorlieButton.x = 240
	kalgoorlieButton.y = 104
	kalgoorlieButton.alpha = 0
	kalgoorlieButton.isHitTestable = true
	kalgoorlieButton:addEventListener("tap", goKalgoorlie)

	local barossaButton = display.newRect(0,0,150,30)
	barossaButton:setFillColor(255,0,0)
	barossaButton.x = 78
	barossaButton.y = 147
	barossaButton.alpha = 0
	barossaButton.isHitTestable = true
	barossaButton:addEventListener("tap", goBarossa)

	local ananguButton = display.newRect(0,0,150,30)
	ananguButton:setFillColor(255,0,0)
	ananguButton.x = 240
	ananguButton.y = 147
	ananguButton.alpha = 0
	ananguButton.isHitTestable = true
	ananguButton:addEventListener("tap", goAnangu)

	local oceanRoadButton = display.newRect(0,0,150,30)
	oceanRoadButton:setFillColor(255,0,0)
	oceanRoadButton.x = 78
	oceanRoadButton.y = 190
	oceanRoadButton.alpha = 0
	oceanRoadButton.isHitTestable = true
	oceanRoadButton:addEventListener("tap", goOceanRoad)

	local grampiansButton = display.newRect(0,0,150,30)
	grampiansButton:setFillColor(255,0,0)
	grampiansButton.x = 240
	grampiansButton.y = 190
	grampiansButton.alpha = 0
	grampiansButton.isHitTestable = true
	grampiansButton:addEventListener("tap", goGrampians)

	local kakaduButton = display.newRect(0,0,150,30)
	kakaduButton:setFillColor(255,0,0)
	kakaduButton.x = 78
	kakaduButton.y = 233
	kakaduButton.alpha = 0
	kakaduButton.isHitTestable = true
	kakaduButton:addEventListener("tap", goKakadu)

	local uluruButton = display.newRect(0,0,150,30)
	uluruButton:setFillColor(255,0,0)
	uluruButton.x = 240
	uluruButton.y = 233
	uluruButton.alpha = 0
	uluruButton.isHitTestable = true
	uluruButton:addEventListener("tap", goUluru)

	local barrierReefButton = display.newRect(0,0,150,30)
	barrierReefButton:setFillColor(255,0,0)
	barrierReefButton.x = 78
	barrierReefButton.y = 276
	barrierReefButton.alpha = 0
	barrierReefButton.isHitTestable = true
	barrierReefButton:addEventListener("tap", goBarrierReef)

	local kurandaButton = display.newRect(0,0,150,30)
	kurandaButton:setFillColor(255,0,0)
	kurandaButton.x = 240
	kurandaButton.y = 276
	kurandaButton.alpha = 0
	kurandaButton.isHitTestable = true
	kurandaButton:addEventListener("tap", goKuranda)

	local sydneyButton = display.newRect(0,0,150,30)
	sydneyButton:setFillColor(255,0,0)
	sydneyButton.x = 78
	sydneyButton.y = 319
	sydneyButton.alpha = 0
	sydneyButton.isHitTestable = true
	sydneyButton:addEventListener("tap", goSydney)

	local blueMountainsButton = display.newRect(0,0,150,30)
	blueMountainsButton:setFillColor(255,0,0)
	blueMountainsButton.x = 240
	blueMountainsButton.y = 319
	blueMountainsButton.alpha = 0
	blueMountainsButton.isHitTestable = true
	blueMountainsButton:addEventListener("tap", goBlueMountains)

	local canberraButton = display.newRect(0,0,150,30)
	canberraButton:setFillColor(255,0,0)
	canberraButton.x = 78
	canberraButton.y = 362
	canberraButton.alpha = 0
	canberraButton.isHitTestable = true
	canberraButton:addEventListener("tap", goCanberra)

	local cradleMountainButton = display.newRect(0,0,150,30)
	cradleMountainButton:setFillColor(255,0,0)
	cradleMountainButton.x = 240
	cradleMountainButton.y = 362
	cradleMountainButton.alpha = 0
	cradleMountainButton.isHitTestable = true
	cradleMountainButton:addEventListener("tap", goCradleMountain)

	local freycinetButton = display.newRect(0,0,150,30)
	freycinetButton:setFillColor(255,0,0)
	freycinetButton.x = display.contentCenterX
	freycinetButton.y = 405
	freycinetButton.alpha = 0
	freycinetButton.isHitTestable = true
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