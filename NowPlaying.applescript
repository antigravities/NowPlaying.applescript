set _artist to ""
set _track to ""

if application "Music" is running then
	tell application "Music"
		try
			set _track to the current track's name
			set _artist to the current track's artist
		on error
			set _track to ""
			set _artist to ""
		end try
	end tell
end if

if _artist = "" and _track = "" and application "Spotify" is running then
	tell application "Spotify"
		try
			set _track to the current track's name
			set _artist to the current track's artist
		on error
			set _track to ""
			set _artist to ""
		end try
	end tell
end if

-- set the clipboard to _artist & " - " & _track

if _artist = "" and _track = "" then
	tell application "Adium" to go available
else
	tell application "Adium" to go available with message _artist & " - " & _track
end if