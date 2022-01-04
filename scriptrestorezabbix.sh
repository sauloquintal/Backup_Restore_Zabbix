#!/bin/sh

DBNAME=zabbix
DBUSER=USER
DBPASS=PASSWORD
DIRBKP=/home/backup/zabbix/

echo "###########################################################################"
echo "#Escrito por Saulo Quintal                                                #"
echo "#Script escrito para processo de restore automatizado do zabbix no bacula.#"
echo "#Script livre para reprodução e alteração.                                #"
echo "#Contato: sauloquintal@gmail.com                                          #"
echo "###########################################################################"
echo "---------------------------------------------------------------------------"

ARQ=`find $DIRBKP -type f -printf '%T+ %p\n' | sort | cut -d/ -f5 | head -n 1`

sudo find $DIRBKP -type f -printf '%T+ %p\n' | sort | cut -d/ -f5 | head -n 1 >> /tmp/tmp.txt

sudo sed -i 's/schema/config/g' "/tmp/tmp.txt"

ARQ1=`cat /tmp/tmp.txt`

sudo rm -rf /tmp/tmp.txt

systemctl stop zabbix-server.service

sudo gunzip < $DIRBKP$ARQ | sudo mysql -u$DBUSER  -p$DBPASS $DBNAME

sudo gunzip < $DIRBKP$ARQ1 | sudo mysql -u$DBUSER  -p$DBPASS $DBNAME

systemctl start zabbix-server.service

echo "---------------------------------"
echo "-PROCESSO DE RESTORE FINALIZADO!-"
echo "---------------------------------"