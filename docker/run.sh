#!/bin/bash
set -e

echo "# custom variable">/etc/taos/taos.cfg
echo "firstEp               $firstEp">>/etc/taos/taos.cfg
echo "secondEp              $secondEp">>/etc/taos/taos.cfg
echo "fqdn                  $fqdn">>/etc/taos/taos.cfg
echo "serverPort            $serverPort">>/etc/taos/taos.cfg

taosd