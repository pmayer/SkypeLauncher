set c to do shell script "count=`ps aux | grep -c '[S]kype.app'`;echo $count;"

if c > 0 then
	set args to " --args --secondary --datapath=/Users/$(whoami)/Library/Application\\ Support/Skype" & (c + 1)
else
	set args to ""
end if

do shell script "open -na /Applications/Skype.app" & args