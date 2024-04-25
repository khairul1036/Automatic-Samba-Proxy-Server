#!/bin/bash

sudo apt-get update
sudo apt-get install squid
service squid status
service squid stop
ifconfig
