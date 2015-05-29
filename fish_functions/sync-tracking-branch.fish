function sync-tracking-branch
	set BRANCH (git rev-parse --abbrev-ref HEAD);
	git branch --set-upstream-to=origin/$BRANCH $BRANCH;
end
