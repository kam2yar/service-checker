#!/bin/bash
#ver. 4
##this script will check mysql and apache
##if that service is not running
##it will start the service and send an email to you
##if the restart does not work, it sends an email and then exits

##set the path ##this works for Ubuntu 14.04 and 16.04
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

##list your services you want to check
SERVICES=('apache2' 'mysql' 'webmin' 'postfix')

#### OK. STOP EDITING ####


 for i in "${SERVICES[@]}"
  do
 ###CHECK SERVICE####
 pgrep $i >/dev/null 2>&1
 STATS=$(echo $?)

 ###IF SERVICE IS NOT RUNNING####
 if [[  $STATS == 1  ]]

  then
  ##TRY TO RESTART THAT SERVICE###
  service $i start

  ##CHECK IF RESTART WORKED###
  pgrep $i >/dev/null 2>&1
  RESTART=$(echo $?)

  if [[  $RESTART == 0  ]]
   ##IF SERVICE HAS BEEN RESTARTED###
   then

    ##REMOVE THE TMP FILE IF EXISTS###
    if [ -f "/tmp/$i" ];
    then
     rm /tmp/$i
    fi
  fi
 fi



  done
exit 0;
