#!/bin/bash

echo "firstEp               $firstEp">>/etc/taos/taos.cfg
echo "secondEp              $secondEp">>/etc/taos/taos.cfg

taos -s "show dnodes"

echo $@
while test $# -gt 0
do
    taos -s "create dnode \"$1\""
    shift
done

taos -s "show dnodes"