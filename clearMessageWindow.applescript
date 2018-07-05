-- @file: clearMessageWindow.AppleScript
-- @author: Brendan Hogan
-- @version: 1.2.1
-- @update: 2018-02-05

-- Version history

-- ver. 1.2.1 : update formatting for better EPPC definitions



-- This script clears the message window and resets the program for the next message.


tell application "QDisplay"
	-- no string entered clears the message window
	set message to ""
end tell
