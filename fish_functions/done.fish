function done
	if set -q argv[1]
		set lines $argv[1]
	else
		set lines 8
	end

	set filter 's/[0-9]{4}-([0-9]{2}-[0-9]{2}) [0-9]{2}:[0-9]{2}:[0-9]{2}/\1/'

	tail -n $lines ~/pomodoro.log | sed -E $filter
end
