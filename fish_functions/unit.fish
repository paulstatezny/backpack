function unit
	# Remove logging portion of phpunit configuration
	sed -i .sedbackup 's/\<\/logging\>//g' ./phpunit.xml
	sed -i .sedbackup 's/\<logging\>//g' ./phpunit.xml
	rm *.sedbackup

        if set -q argv[1]
        	vendor/bin/phpunit --filter $argv[1]
        else
        	vendor/bin/phpunit
        end

	git checkout phpunit.xml
end
