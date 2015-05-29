function develop
	git checkout develop
	git pull
	git pr
	git branch --merged | grep -v "\*" | grep -v '^  master$' | xargs -n 1 git branch -d
end
