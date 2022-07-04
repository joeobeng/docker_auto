#!/bin/bash
#script to automate docker image build
#Author: Prof Elvis N
#Maintener: Sr Eng Rudolph
#Company: Etech Consulting LLC
today=`date`
user=`whoami`
source version.env
for i in ${versions[@]}; do
docker build -t etechteam2/etechapp:$i .
docker push etechteam2/etechapp:$i
echo "running a docker container with etechteam2/etecapp:$i"
sleep 5
docker run --name etechApp -dp 80:80 etechteam2/etechapp:$i
done