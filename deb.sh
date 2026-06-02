#!/bin/sh

set -e

docker build -t grpn .
docker run grpn cat /grpn_1.5.4_amd64.deb > grpn_1.5.4_amd64.deb
