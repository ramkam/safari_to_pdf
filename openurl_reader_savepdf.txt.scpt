######
# This script will Try to show the pages with the Reader
# then save it as pdf wherever the previous save has been done ...
#
# It does give a name (it'll guess one, some odd chars will be used like /)
#
# Inspired by bits and pieces here and there
# This one seems better than others (menu stuff) 
# http://macscripter.net/viewtopic.php?id=41651

on run argv
	set zeURL to item 1 of argv
	
	
	
	tell application "Safari"
		activate
		delay 1
		
		make new document at end of documents
		set URL of document 1 to zeURL #"http://www.lemonde.fr/"
		
		repeat until ((do JavaScript "document.readyState" in front document) is "complete")
			delay 1
		end repeat
	end tell
	
	tell application "System Events" to tell process "Safari"
		
		-- reader
		keystroke "R" using command down
		delay 2
		-- bring up the print dialog
		keystroke "p" using command down
		delay 1
		
		-- hit the pdf button
		tell sheet 1 of window 1
			set PDFButton to menu button "PDF"
			click PDFButton
		end tell
		--
		delay 1
		click menu item 2 of menu 1 of PDFButton
		delay 2
		keystroke return
		
		-- oops already exist, close dialog
		delay 5
		key code 53
		key code 53
		
	end tell
	
	tell application "Safari"
		close window 1
	end tell
	
end run
