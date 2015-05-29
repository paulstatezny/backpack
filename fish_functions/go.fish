function go
	set conf ~/go.conf

	if set -q argv[1]
		set alias (cat ~/go.conf | grep "^$argv[1] " | sed "s/^$argv[1] //");
	end

	if [ "$argv[1]" = "add" ]
		sed -i '' "/^$argv[2] /d" $conf;
		echo "$argv[2] $argv[3]" >> $conf;
	else if [ "$argv[1]" = "delete" ]
		sed -i '' "/^$argv[2] /d" "$conf";
	else if [ "$argv[1]" = "list" ]
		cat $conf
	else if [ "$alias" != "" ]
		set directory "$alias";
	else if set -q argv[1]
		set directory (ls -dl ~/Synapse/* | awk '{print $9}' | grep $argv[1]);
	else
		set directory ".";
	end

	if [ "$directory" != "" ]
		cd ~/Synapse
		cd $directory
	end
end
