# CWP-mysqlCheck

This simple addon to check the status of mysqld service and if it's down the script will start it again.


# Installation

1- Download from here https://github.com/egyprotech/CWP-mysqlCheck/archive/master.zip

2- Upload mysqlCheck directory to your server root folder /root

3- make the mysqlCheck excutable from the terminal type "chmod +x /root/mysqlCheck/mysqlCheck.sh"

4- add the file to crontab -e   */5 * * * * /root/mysqlCheck/mysqlCheck.sh	

