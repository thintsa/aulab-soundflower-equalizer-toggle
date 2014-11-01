-- Step 1: Download and install AU Lab and Soundflower (restart required)
-- Step 2: place the SexyAudioEqualizer.trak file in your Documents directory
-- Step 3: open 'equalizer-toggle.scpt' file with AppleScript Editor.app and replace YOUR_USER_NAME_HERE with your OSX user name
-- Step 4: Save script as "Equalizer Toggle.app" in your Applications folder and attempt to run it (OSX 10.9.5 Mavericks will throw a security alert)
-- Step 5: Give permission for the app to run in: Sysytem Preferences -> Security & Privacy --> Privacy --> Accessibility
-- Enjoy your audio equalizer :)

tell application "System Events"
	set ProcessList to name of every process
	if "AU Lab" is in ProcessList then
		tell application "AU Lab"
			close (every window whose name is "Document Configuration")
			quit
		end tell
		tell application "System Preferences" to activate
		tell application "System Preferences"
			reveal anchor "output" of pane id "com.apple.preference.sound"
		end tell
		tell application "System Events" to tell process "System Preferences"
			tell table 1 of scroll area 1 of tab group 1 of window 1
				select (row 1) -- should be "Headphones"
			end tell
		end tell
		tell application "System Preferences" to quit
	end if
	if "AU Lab" is not in ProcessList then
		tell application "AU Lab"
			open "Users:YOUR_USER_NAME_HERE:Documents:SexyAudioEqualizer.trak" 
			tell application "System Preferences" to activate
			tell application "System Preferences"
				reveal anchor "output" of pane id "com.apple.preference.sound"
			end tell
			tell application "System Events" to tell process "System Preferences"
				tell table 1 of scroll area 1 of tab group 1 of window 1
					select (row 2) -- assumes this is "Soundflower (2ch)"
				end tell
			end tell
			tell application "System Preferences" to quit
			tell application "AU Lab"
				close (every window whose name is "Document Configuration")
			end tell
			tell application "Finder"
				set visible of process "AU Lab" to false
			end tell
		end tell
	end if
end tell
