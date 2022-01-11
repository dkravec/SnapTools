global frontAppName

# Checks for the current app that is open
tell application "System Events"
	set frontApp to first application process whose frontmost is true
	set frontAppName to name of frontApp
end tell

# Checks the current screen resolution
tell application "Finder"
	set {unneededOne, unneededTwo, screenWidth, screenHeight} to bounds of window of desktop
end tell

set currentMovement to 4
# Window Movements
-- 1 | 4 Windows (Left Right Top and bottom)
-- 2 | 2 Windows (Left and Right)
-- 3 | 2 Windows (Top and Bottom)
-- 4 | 1 Window (Fullscreen)

# Set all the application names of which you want to move.
set applicationName1 to frontAppName
set applicationName2 to "School Mac"
set applicationName3 to "Safari"
set applicationName4 to "MongoDB Compass"


if (currentMovement = 1) then
	# Window Size, for 4 Windows
	set sizeWidth to screenWidth / 2
	set sizeHeight to screenHeight / 2
	
	# Top Left Position
	set positionXTopLeft to 0
	set positionYTopLeft to 0
	
	# Top Right Position
	set positionXTopRight to screenWidth / 2
	set positionYTopRight to 0
	
	# Bottom Left Position
	set positionXBotomtLeft to 0
	set positionYBottomLeft to screenHeight / 2
	
	# Bottom Right Position
	set positionXBottomRight to screenWidth / 2
	set positionYBottomRight to screenHeight / 2
	
	tell application "System Events" to tell process applicationName1
		set position of window 1 to {positionXTopLeft, positionYTopLeft}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea1 to size of window 1
	end tell
	
	tell application "System Events" to tell process applicationName2
		set position of window 1 to {positionXTopRight, positionYTopRight}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea2 to size of window 1
	end tell
	
	tell application "System Events" to tell process applicationName3
		set position of window 1 to {positionXBotomtLeft, positionYBottomLeft}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea3 to size of window 1
	end tell
	
	tell application "System Events" to tell process applicationName4
		set position of window 1 to {positionXBottomRight, positionYBottomRight}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea4 to size of window 1
	end tell
else if (currentMovement = 2) then
	# Window Size, for Left/Right 
	set sizeWidth to screenWidth / 2
	set sizeHeight to screenHeight
	
	# Top Position
	set positionXLeft to 0
	set positionYLeft to 0
	
	# Bottom Position
	set positionXRight to screenWidth / 2
	set positionYRight to 0
	
	tell application "System Events" to tell process applicationName1
		set position of window 1 to {positionXLeft, positionYLeft}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea1 to size of window 1
	end tell
	
	tell application "System Events" to tell process applicationName2
		set position of window 1 to {positionXRight, positionYRight}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea2 to size of window 1
	end tell
else if (currentMovement = 3) then
	# Window Size, for Top/Bottom 
	set sizeWidth to screenWidth
	set sizeHeight to screenHeight / 2
	
	# Top Left Position
	set positionXTop to 0
	set positionYTop to 0
	
	# Bottom Left Position
	set positionXBotom to 0
	set positionYBottom to screenHeight / 2
	
	tell application "System Events" to tell process applicationName1
		set position of window 1 to {positionXTop, positionYTop}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea1 to size of window 1
	end tell
	
	tell application "System Events" to tell process applicationName2
		set position of window 1 to {positionXBotom, positionYBottom}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea2 to size of window 1
	end tell
else if (currentMovement = 4) then
	# Window Size, for FullSize
	set sizeWidth to screenWidth
	set sizeHeight to screenHeight
	
	# Top Left Position
	set positionX to 0
	set positionY to 0
	
	tell application "System Events" to tell process applicationName1
		set position of window 1 to {positionX, positionY}
		set size of window 1 to {sizeWidth, sizeHeight}
		set sizeArea1 to size of window 1
	end tell
else
	return display dialog "Please select a correct option for currentMovement."
end if

return "done program."