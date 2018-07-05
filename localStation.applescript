# @file: localStation.AppleScript
# @author: Brendan Hogan
# @version: 1.2.1
# @update: 2018-02-05

# Version history

# ver. 1.2.1 : update formatting for better EPPC definitions

(*

This is the AppleScript file run from the front of house machine that receives messages FROM the remote machine/engineer.
Note: eppc protocol is unstable on OS X 10.8

Configuration:

eppc protocol addressing takes the form "//user:password@IPaddress"
requires that the remote user have administrative privileges over the destination device and that Remote Apple Events be enabled
in System Preferences>Sharing.
*)


set remoteMachine to "eppc://user:password@xxx.xxx.xxx.xxx"
-- change the above to match the userName, passWord and iPAddress of the destination/remote machine

try
	using terms from application "QDisplay"
		tell application "QDisplay" of machine remoteMachine
			-- signal to remote station that message was received
			set message to "Received"
			set messageSize to 40
			set messageColor to "red"
		end tell
	end using terms from
end try
