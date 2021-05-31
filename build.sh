#!/bin/sh
docker build -t mnestor/nextcloud-smb:latest .
docker push mnestor/nextcloud-smb:latest
