(*
version 1.2.1 / 05-February-2018
This script clears the message window and resets the program for the next message.
*)

tell application "QDisplay"
	-- no string entered clears the message window
	set message to ""
end tell
