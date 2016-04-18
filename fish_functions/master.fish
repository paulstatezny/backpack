function master
	git checkout master
	git pull
	git pr
	git branch --merged | grep -v "\*" | grep -v '^  develop$' | xargs -n 1 git branch -d
end
