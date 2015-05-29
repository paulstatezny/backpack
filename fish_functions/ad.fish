function ad
        if set -q argv[1]
                set argument "*$argv[1]*"
        else
                set argument "."
        end

        git add $argument -A
        git st
end
