#! /bin/bash

#This is the script to add proxy /
#To our system tools or applications /
#To become anonymous on the internet /
#For a session.

#starting tor on your system.
#if you don't have tor on your system, uncomment the following command.
#sudo apt-get install tor
service tor start

#write the name of tool or apps on which we want to have proxy 
echo "Tool/application Name :"
read Tool

#we're using tool proxychains4 here to get proxy on our system.
proxychains $Tool 

#after the session, stop the tor service /
#by command /
#service tor stop. 
