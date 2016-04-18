function gco
        set branch (git for-each-ref | sed -E 's/[a-zA-Z0-9]*[[:space:]]commit[[:space:]]refs\/(heads|remotes\/origin)\///g' | grep $argv[1] | head -n1)

	if [ "$branch" = "" ]
		echo 'Branch not found';
	else
		git checkout $branch;
		git pull origin $branch;
	end
end
