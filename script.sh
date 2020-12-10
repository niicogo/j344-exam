#!/bin/bash
#amazon-linux-extras install epel
#yum install inotify-tools -y

while inotifywait -e modify nginx-logs/access.log; do
	if [[ ! -f http.log ]]
	then
		echo "======= Starting" >> http.log
        	cat $1 | grep HTTP | awk '{print $9}' | sort | uniq -c | awk '{print $2": " $1}' | sed 's/^/http code /' >> http.log
	else	
		echo "=======" >> http.log
		cat $1 | grep HTTP | awk '{print $9}' | sort | uniq -c | awk '{print $2": " $1}' | sed 's/^/http code /' >> http.log
	fi
done
