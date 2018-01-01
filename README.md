This program seeks to solve the problem of communication between a front of house mix engineer and remote audio engineer during live
performance situations, especially musical theater, where traditional wired com systems are impractical. By utilizing a text alert method,
the remote engineer can send brief messages to the front of house engineer to alert them to system issues without requiring verbal
communication.

The scripts require an installation of QDisplay (https://github.com/Figure53/QDisplay) on both the remote/sending and 
local/receiving machines. As this is written in AppleScript, the program is obvious macOS-only. 

Remote Apple Events must be enabled on both machines (System Preferences>Sharing).

It is assumed that the front of house/local machine is also running an instance of QLab, and therefore the received/clear message
will be triggered via an interal Script cue within the performance workspace. 

Learn more about QLab at http://www.figure53.com/qlab

Users can export the included AppleScript files as applications to run locally on the remote/sending machine, rather than running from 
within AppleScript editor.
