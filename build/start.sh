 #!/bin/bash
 chmod 777 /root/run.sh
 /root/run.sh
 chmod 777 /etc/init.d/aria2
 /etc/init.d/aria2 start 
 aria2c --enable-rpc -D
 cp /root/utar.sh /var/www/html/apps/
 cp /root/app.tar /var/www/html/apps/
 chmod 777 /var/www/html/apps/utar.sh 
 /var/www/html/apps/utar.sh
