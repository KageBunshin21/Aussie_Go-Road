-----------------------------------------------------------------------------------------
--
-- 	lawsRegulationsView.lua
--
-- 	laws of the state and regulations about the target location
--
--  Author: Michael Ibesa and Ricardo Felix Costa
--  Date: October 18, 2018
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
local function viewWebPage( event )
    system.openURL(urlLaws)
end

local function viewWebPages( event )
    system.openURL( urlRegulations )
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
	composer.removeScene( "scenes.lawsRegulationsView" )
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

	-- Create a scrollView
	local scrollView = widget.newScrollView ({
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

	-- set up tips as background image
	--[[local background = display.newImageRect( "/assets/tips.png", display.actualContentWidth, display.actualContentHeight )
    background.x = display.contentCenterX
    scrollView:insert (background)
	sceneGroup:insert(scrollView)]]--

	-- Display title "Plan My Route"
	local title = display.newText("Laws & Regulations", display.contentCenterX , 10 , display.contentWidth * .8, 0, titleFontStyle, 20)


-- -----------------------------------------------------------------------------------
-- text object for the information and links of laws and regulations
-- -----------------------------------------------------------------------------------
	--Storing and displaying various different things based on what the user selected

	urlLaws = ""
    urlRegulations = ""
    local subTitle
    local lawsRegTextObject
	local lawsTextObject
	local lawsLinkText
	local regulationsTextObject
	local regulationsLinkText

	if _G.selectedLocation == 1 then
        urlLaws = savedInfo["1"]["E"]
        urlRegulations = savedInfo["1"]["D"]
        subTitle = display.newText(savedInfo["1"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["1"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["1"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["1"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["1"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 2 then
		urlLaws = savedInfo["2"]["E"]
        urlRegulations = savedInfo["2"]["D"]
        subTitle = display.newText(savedInfo["2"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["2"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["2"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["2"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["2"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 3 then
		urlLaws = savedInfo["3"]["E"]
        urlRegulations = savedInfo["3"]["D"]
        subTitle = display.newText(savedInfo["3"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["3"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["3"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["3"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["3"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 4 then
		urlLaws = savedInfo["4"]["E"]
        urlRegulations = savedInfo["4"]["D"]
        subTitle = display.newText(savedInfo["4"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["4"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["4"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["4"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["4"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 5 then
		urlLaws = savedInfo["5"]["E"]
        urlRegulations = savedInfo["5"]["D"]
        subTitle = display.newText(savedInfo["5"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["5"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["5"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["5"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["5"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 6 then
		urlLaws = savedInfo["6"]["E"]
        urlRegulations = savedInfo["6"]["D"]
        subTitle = display.newText(savedInfo["6"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["6"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["6"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["6"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["6"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 7 then
		urlLaws = savedInfo["7"]["E"]
        urlRegulations = savedInfo["7"]["D"]
        subTitle = display.newText(savedInfo["7"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["7"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["7"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["7"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["7"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 8 then
		urlLaws = savedInfo["8"]["E"]
        urlRegulations = savedInfo["8"]["D"]
        subTitle = display.newText(savedInfo["8"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["8"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["8"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["8"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["8"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 9 then
		urlLaws = savedInfo["9"]["E"]
        urlRegulations = savedInfo["9"]["D"]
        subTitle = display.newText(savedInfo["9"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["9"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["9"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["9"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["9"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 10 then
		urlLaws = savedInfo["10"]["E"]
        urlRegulations = savedInfo["10"]["D"]
        subTitle = display.newText(savedInfo["10"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["10"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["10"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["10"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["10"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 11 then
		urlLaws = savedInfo["11"]["E"]
        urlRegulations = savedInfo["11"]["D"]
        subTitle = display.newText(savedInfo["11"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["11"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["11"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["11"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["11"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 12 then
		urlLaws = savedInfo["12"]["E"]
        urlRegulations = savedInfo["12"]["D"]
        subTitle = display.newText(savedInfo["12"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["12"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["12"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["12"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["12"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 13 then
		urlLaws = savedInfo["13"]["E"]
        urlRegulations = savedInfo["13"]["D"]
        subTitle = display.newText(savedInfo["13"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["13"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["13"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["13"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["13"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 14 then
		urlLaws = savedInfo["14"]["E"]
        urlRegulations = savedInfo["14"]["D"]
        subTitle = display.newText(savedInfo["14"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["14"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["14"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["14"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["14"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	elseif _G.selectedLocation == 15 then
		urlLaws = savedInfo["15"]["E"]
        urlRegulations = savedInfo["15"]["D"]
        subTitle = display.newText(savedInfo["15"]["B"], display.contentCenterX, 50, subTitleFontStyle, subTitleFontSize)
        lawsRegTextObject = display.newText( "Learn all of the rules and regulations of the tourist spot and its laws and by-laws of the state that you wish to visit, by tapping on the links below. \n\nThis will redirect you to the appropriate website that contains all the relevant information you want to know.", 0 , 10 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsTextObject = display.newText( "To know about the laws of this state ("..savedInfo["15"]["C"]..") please tap on the text below.", 0 , lawsRegTextObject.height+50 , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	lawsLinkText = display.newText( "*Tap here for more information on "..savedInfo["15"]["C"].." laws.", 0 , lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
    	regulationsTextObject = display.newText( "To know about the rules regulations of this tourist spot ("..savedInfo["15"]["B"]..") please tap on the text below.", 0 , lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, normalfontStyle , normalFontSize)
    	regulationsLinkText = display.newText( "*Tap here for more information on "..savedInfo["15"]["B"].." rules and regulations.", 0 , regulationsTextObject.height+50+lawsLinkText.height+50+lawsTextObject.height+100+lawsRegTextObject.height , display.contentWidth * .8, 0, buttonFontStyle , normalFontSize)
	end

	lawsRegTextObject.x = display.contentCenterX
    lawsRegTextObject.anchorY = 0
	lawsTextObject.x = display.contentCenterX
    lawsTextObject.anchorY = 0
	lawsLinkText.x = display.contentCenterX
    lawsLinkText.anchorY = 0
	regulationsTextObject.x = display.contentCenterX
    regulationsTextObject.anchorY = 0
	regulationsLinkText.x = display.contentCenterX
    regulationsLinkText.anchorY = 0

	scrollView:insert(lawsRegTextObject)
	scrollView:insert(lawsTextObject)
	scrollView:insert(lawsLinkText)
	scrollView:insert(regulationsTextObject)
	scrollView:insert(regulationsLinkText)


	-- a button that links back to the plan my route scene
	local backButton = display.newImageRect( sceneGroup, "assets/back.png", 150, 60 )
    backButton.x = display.contentCenterX+3
    backButton.y = 480


	-- inserting scrollView to sceneGroup
	sceneGroup:insert(title)
	sceneGroup:insert(subTitle)
	sceneGroup:insert(scrollView)

	--Event Listeners
	lawsLinkText:addEventListener( "tap", viewWebPage)
	regulationsLinkText:addEventListener( "tap", viewWebPages)
	backButton:addEventListener( "tap", goToPlanRouteScene)

-- -----------------------------------------------------------------------------------



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
