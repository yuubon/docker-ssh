#!/bin/sh

sudo docker run -p 7022:22 -v ~/appstore_crawler:/mnt/appstore_crawler -d yuubon/ssh

