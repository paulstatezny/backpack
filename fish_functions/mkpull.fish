function mkpull
    set owner (git remote -v | grep git@github.com | head -n1 | awk '{print $2}' | sed 's/.*://' | sed 's/\/.*//')
    set repo  (git remote -v | grep git@github.com | head -n1 | awk '{print $2}' | sed 's/.*\///' | sed 's/\.git//')
    set head  (git rev-parse --abbrev-ref HEAD)

    if set -q argv[1]
        set base $argv[1]
    else
        set base "develop"
    end

    if set -q argv[2]
        set issue $argv[2]
    else
        set issue (git rev-parse --abbrev-ref HEAD | egrep "[0-9]+" -o)
    end

    git push
    hub pull-request -i $issue -b $owner/$repo:$base -h $owner/$repo:$head
end
