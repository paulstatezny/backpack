function later
	if [ ! $argv[1] ]
		cat ~/later.log
	else if [ -n $argv[1] -a $argv[1] = "pop" ]
		echo "pop"
	else if [ -n $argv[1] -a $argv[1] = "clear" ]
		echo -n "" > ~/later.log
	else if [ -n $argv[1] -a $argv[1] = "help" ]
		echo "Commands are: clear, pop, and help."
		echo "For normal use: later 'Thing I want to do later'"
	else
		echo $argv[1] >> ~/later.log
	end
end
