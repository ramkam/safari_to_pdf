####
# Dumps the current url to stdout
#

tell application "Safari"

    set theURL to URL of current tab of window 1

end tell

return theURL
