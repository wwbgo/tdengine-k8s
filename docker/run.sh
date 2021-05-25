#!/bin/bash
set -e

echo "# custom variable">/etc/taos/taos.cfg
# echo "firstEp               $firstEp">>/etc/taos/taos.cfg
# echo "secondEp              $secondEp">>/etc/taos/taos.cfg
# echo "fqdn                  $fqdn">>/etc/taos/taos.cfg
# echo "serverPort            $serverPort">>/etc/taos/taos.cfg

IFS=$'\n';for i in `env | grep TAOS_`
do
    key=`echo $i | awk -F"=" '{print $1}'`
    if [[ "$key" =~ ^TAOS_.* ]]; then
        val=${i#$key=*}
        key=${key#TAOS_*}
        echo "$key               $val">>/etc/taos/taos.cfg
    fi
done

taosd