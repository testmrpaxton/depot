#!/usr/bin/ruby
#

def open_new_tab( folder )
	%x[ osascript 2>/dev/null <<EOF
		     tell application "Terminal"
		     tell application "System Events" to keystroke "t" using command down
		     do script with command "cd #{folder}; clear; ls -pRF" in front window
		     end tell
		     EOF
	]
end

//folder = Dir.getwd + "app/" + ARGV[0]

open_new_tab( folder )