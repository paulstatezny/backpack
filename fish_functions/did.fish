function did
	set time (date +"%Y-%m-%d %T");
	set text "$time | $argv[1]";
	set file "/Users/paul/pomodoro.log";

	if set -q argv[1]
		touch $file;
		echo $text >> $file;
	end
end
