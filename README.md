# SnapTools

Created by Daniel Kravec, on January 10, 2022


# Usage

### How to run SnapTools.applescript

To run the AppleScript:

1. Open Script Editor, which comes preinstalled with each Mac.

2. Open the correct file using Script Editor.

3. Compile the Script. (button with hammer icon)

4. Enter configurations. [Please check out the configuration section.](#Configuration)

5. Compile the Script again. (button with hammer icon)

6. Press "Run the Script". (button with play icon)

6. Open System Preferences > Security & Privacy > Privacy > Accessibility.

7. Press the lock button to make changes.

8. Allow "Script Editor" to control your computer.
    
    this is so the script can reconize and move your windows around the screen.

7. Re-run the Script (Step #5).


If at any time the script is not working, double check the configuration was done correctly.

After double checking, if it is still not working, tweet @DanKravec and I can do my best to help out!

Otherwise if no error has appeared, then congrats! You have got the Script Running!


# Configuration

## File: SnapTools.applescript
Change all the application names as you want. Lines 22-25.

frontAppName is the app currently used

! Make sure you use the correct Application names

``` AppleScript
set applicationName1 to frontAppName
set applicationName2 to "School Mac"
set applicationName3 to "Safari"
set applicationName4 to "MongoDB Compass"
```

Change the movement setting as you want, on line 14.

``` AppleScript
set currentMovement to 4
# Window Movements
-- 1 | 4 Windows (Left Right Top and bottom)
-- 2 | 2 Windows (Left and Right)
-- 3 | 2 Windows (Top and Bottom)
-- 4 | 1 Window (Fullscreen)
```