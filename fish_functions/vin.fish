function vin
	curl 'http://randomvin.com/getAjax.php?qry=random&str=random&p9=false' -H 'Accept-Encoding: gzip, deflate, sdch' -H 'Accept-Language: en-US,en;q=0.8' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36' -s | sed 's/<[\/]*h2>//g' | pbcopy
end
