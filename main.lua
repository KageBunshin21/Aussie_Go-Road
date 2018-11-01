-----------------------------------------------------------------------------------------
--
-- main.lua
-- created by Michael Ibesa and Ashley Thorne-Jeffrey
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

-- Hide status bar
display.setStatusBar( display.HiddenStatusBar )
 
-- Seed the random number generator
math.randomseed( os.time() )

-- Creates & sets the location flag
_G.selectedLocation = 0

-- -----------------------------------------------------------------------------------
-- loading the json file and converting it into lua table 
-- -----------------------------------------------------------------------------------

-- include the json library to save and load data to a json file
local json = require "json"

-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
-- infoLoad() loads the information of the tourist spots
-- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
function infoLoad( pathname ) --load a table from a file, this is just one way to do saves
	local data = nil
	local path = system.pathForFile( pathname..".json", system.ResourceDirectory ) --get the file path
	local fileHandle = io.open( path, "r" ) -- open the file
	print(path)	-- just to see the path of system.ResourceDirectory 
	if fileHandle then -- if opening the file worked, read the file.
		print("reading file")
		data = json.decode( fileHandle:read( "*a" ) ) -- decode the JSON into a lua table
		io.close( fileHandle ) -- close the opened file
	end
	return data -- return the loaded table
end

-- load the info from the table
savedInfo = infoLoad( "info" )

-- check if the file exists
if savedInfo == NIL then
	-- if so, print no data
	print("No Data")
else 
	print("Data Exist")
	-- this is just to check in the console if it contains the right data
	print(savedInfo["1"]["C"])

end

-- Go to the intro screen
composer.gotoScene("scenes.intro" )