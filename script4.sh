#!/bin/bash
#This script backs up a directory of your choice

echo -e "What directory do you want to back up?-->\c"
read ANS

echo "Performing backup....."
sleep 3
FILE=`echo $ANS | sed s#/#-#g`
DATE=`date +%F`
tar -zcvf ~/backup-$FILE-$DATE.tar.gz $ANS

echo "Backup completed successfully to ~/backup-$FILE-$DATE.tar.gz"
echo " did you check your backup?"
read name
echo "Did you satisified with your backup?"
read ANS
if [ $ANS = "y" -o $ANS = "Y" ]
then
echo "you are all set!"
elif [ $ANS = "n" -o $ANS = "N" ]
then 
echo "sorry, do it again" 
#continue
#elif [ $ANS = "n" -o $ANS = "N" ]
#then
#break
#else 
#go to line 4
fi
