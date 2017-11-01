#version 1.2 / 31-October-2017

#This is the AppleScript version for the SENDING end (the remote engineer who sends messages TO front of house)
#Note: eppc protocol is unstable on OS X 10.8

#Configuration: 

#This applet requires "QDisplay" (https://github.com/Figure53/QDisplay) to be installed on the remote machine
#eppc protocol addressing takes the form "eppc://username:password@IPaddress"
#requires that the local (sending) user have administrative privileges over the remote (receiving) machine 

set remoteMachine to "eppc://username:password@IPaddress"
#update the above to username, password and IPaddress of remote (receiving) machine
#do not use special characters '@' or ':' in password

display dialog "Message to FOH:" default answer "" buttons {"Cancel", "Send"} default button 2 with title "FOH Messaging"
set theMessage to the text returned of the result

try
	using terms from application "QDisplay"
		tell application "QDisplay" of machine remoteMachine
			set message to "-- INCOMING --"
			set messageSize to 80
			set messageColor to "red"
			delay 0.5
			repeat 4 times
				#clear the message window
				set message to ""
				delay 0.5
				#set the warning message
				set message to "-- INCOMING --"
				delay 0.5
			end repeat
			#clear the window
			set message to ""
			delay 0.5
			#display text entered in dialgo box
			set message to theMessage
		end tell
	end using terms from
end try
