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
				select (row 1)
			end tell
		end tell
		tell application "System Preferences" to quit
	end if
	if "AU Lab" is not in ProcessList then
		tell application "AU Lab"
			open "Users:epic:Documents:SexyAudioEqualizer.trak"
			tell application "System Preferences" to activate
			tell application "System Preferences"
				reveal anchor "output" of pane id "com.apple.preference.sound"
			end tell
			tell application "System Events" to tell process "System Preferences"
				tell table 1 of scroll area 1 of tab group 1 of window 1
					select (row 2)
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
