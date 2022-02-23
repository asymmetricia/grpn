#!/bin/sh

set -e

docker build -t grpn .
docker run grpn cat /grpn_1.5.3_amd64.deb > grpn_1.5.3_amd64.deb
