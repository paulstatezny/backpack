function scrum
	set today (date "+%Y-%m-%d");
	set weekday (date '+%A');
	set filter 's/.* \| //g';
	set email "6023776002@messaging.sprintpcs.com";
	set file "~/pomodoro.log";

	if [ $weekday = "Monday" ]
		set yesterday (date -v -3d "+%Y-%m-%d");
	else
		set yesterday (date -v -1d "+%Y-%m-%d");
	end

	for task in (cat ~/pomodoro.log | grep -E $yesterday | sed -E $filter)
		echo $task | mail $email;
	end

	sleep 10;

	for task in (cat ~/pomodoro.log | grep -E $today | sed -E $filter)
		echo "[Today]" $task | mail $email;
	end
end
