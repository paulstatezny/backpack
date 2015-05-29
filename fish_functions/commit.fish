function commit
	set issue (git rev-parse --abbrev-ref HEAD | cut -d / -f 3 | cut -d - -f 1 | grep "^\d*\$")
	set message $argv[1]
	set prefix "Refs #"

	if [ "$issue" = "" ]
		set issue (git rev-parse --abbrev-ref HEAD | cut -d / -f 2 | cut -d - -f 1 | grep "^\d*\$")
	end

	if [ "$issue" = "" ]
		set prefix ""
	else
		set prefix "Refs #$issue - "
	end
 
	git commit -m "$prefix$message."
	st
end
