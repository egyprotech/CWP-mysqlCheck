#!/bin/bash
mysqlCheck_Logs=/root/mysqlCheck/logs

echo "Start deleting the old log files" 
find $mysqlCheck_Logs/up/* -mtime +5 -type f -delete
find $mysqlCheck_Logs/down/* -mtime +5 -type f -delete
echo "Old log files has been deleted" 

now=$(date +"%d_%m_%Y_%T")
upLog=$mysqlCheck_Logs/up/$now.log
downLog=$mysqlCheck_Logs/down/$now.log


UP=$(pgrep mysqld | wc -l);
if [ "$UP" == 0 ];
then
        echo "MySQL is down.";
        sudo service mysqld start
        >$downLog

else
        echo "All is well.";
        >$upLog
fi
