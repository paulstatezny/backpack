function archive_pomodoro
	set filter 's/ +([0-9]+) .+/\1/'
	set lines (wc -l ~/pomodoro.log | sed -E $filter)
	set max_lines 30
	set lines_to_remove (echo "$max_lines-$lines" | bc)

	if [ $lines -lt $max_lines ]
		return 0
	end

	for line in (seq $lines_to_remove)
		echo (head -n 1 ~/pomodoro.log) >> ~/pomodoro.archive
		sed -i '' '1,1d' ~/pomodoro.log
	end
end
